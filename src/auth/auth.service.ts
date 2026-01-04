import { DrizzleAsyncProvider } from "@/database/database.provider";
import {
    BadRequestException,
    Inject,
    Injectable,
    InternalServerErrorException,
    UnauthorizedException,
} from "@nestjs/common";
import * as schema from "@/database/schema";
import { NodePgDatabase } from "drizzle-orm/node-postgres";
import { hash, compare } from "bcrypt";
import { RegisterUser } from "./dto/registerUser.dto";
import { LoginUser } from "./dto/loginUser.dto";
import { eq } from "drizzle-orm";
import { EmailConfirmationService } from "./email-confirmation/email-confirmation.service";
import { ConfigService } from "@nestjs/config";
import { MailService } from "@/mail/mail.service";

@Injectable()
export class AuthService {
    constructor(
        @Inject(DrizzleAsyncProvider)
        private db: NodePgDatabase<typeof schema>,
        private emailConfirmationService: EmailConfirmationService,
        private configService: ConfigService,
        private mailService: MailService
    ) {}

    public async register(dto: RegisterUser, req: Request) {
        const [existingUser] = await this.db
            .select()
            .from(schema.users)
            .where(eq(schema.users.email, dto.email));

        if (existingUser) {
            throw new BadRequestException("Такая почта уже существует");
        }

        const passwordHash = await hash(dto.password, 12);
        const [user] = await this.db
            .insert(schema.users)
            .values({
                name: dto.name,
                email: dto.email,
                passwordHash: passwordHash,
            })
            .returning();

        const token = await this.emailConfirmationService.generateToken(
            user.id
        );

        const link = `${this.configService.getOrThrow<string>("FRONTEND_URL")}/?verify-email=${token}`;

        await this.mailService.sendMail(dto.email, link);
        const { passwordHash: _, ...safeUser } = user;
        await this.saveSession(req, user.id);
        return safeUser;
    }

    public async login(dto: LoginUser, req) {
        const [user] = await this.db
            .select()
            .from(schema.users)
            .where(eq(schema.users.email, dto.email));

        if (!user) {
            throw new UnauthorizedException("Invalid credentials");
        }

        const isPasswordValid = await compare(dto.password, user.passwordHash);

        if (!isPasswordValid) {
            throw new UnauthorizedException("Неверный пароль");
        }

        const { passwordHash, ...safeUser } = user;
        this.saveSession(req, user.id);
        return safeUser;
    }

    public async saveSession(req, userId) {
        return new Promise((resolve, reject) => {
            req.session.userId = userId;

            req.session.save((err) => {
                if (err) {
                    return reject(
                        new InternalServerErrorException(
                            "Не удалось сохранить сессию. Проверьте корректность настройки сессии."
                        )
                    );
                }

                resolve(userId);
            });
        });
    }

    public async validateOAuthLogin(profile: any, oAuthProvider) {
        const email =
            profile.emails?.[0]?.value || profile._json?.default_email || "";
        const displayName = profile.displayName || profile.username || "";
        const avatarUrl = profile.photos[0].value || "";

        if (!email) {
            throw new BadRequestException(
                "Email not provided by OAuth provider"
            );
        }

        const [existingUser] = await this.db
            .select()
            .from(schema.users)
            .where(eq(schema.users.email, email));

        if (existingUser) {
            return existingUser;
        }

        const [newUser] = await this.db
            .insert(schema.users)
            .values({
                name: displayName,
                email,
                avatarUrl: avatarUrl,
                authMethod: oAuthProvider,
                isVerified: true,
            })
            .returning();

        return newUser;
    }

    public async generateVerificationToken() {
        const token = crypto.randomUUID();
        const expires = new Date();

        expires.setHours(expires.getHours() + 1);
    }
}
