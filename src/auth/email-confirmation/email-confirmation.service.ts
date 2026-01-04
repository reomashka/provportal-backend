import {
    BadRequestException,
    Inject,
    Injectable,
    NotFoundException,
} from "@nestjs/common";
import { DrizzleAsyncProvider } from "@/database/database.provider";

import * as schema from "@/database/schema";
import { NodePgDatabase } from "drizzle-orm/node-postgres";
import { ConfirmationDto } from "./dto/confirmation.dto";
import { eq } from "drizzle-orm";
import { UserService } from "@/user/user.service";

@Injectable()
export class EmailConfirmationService {
    constructor(
        @Inject(DrizzleAsyncProvider)
        private db: NodePgDatabase<typeof schema>,
        private userService: UserService
    ) {}

    public async newVerification(dto: ConfirmationDto) {
        const [existingToken] = await this.db
            .select()
            .from(schema.tokens)
            .where(eq(schema.tokens.token, dto.token));

        if (!existingToken) {
            throw new NotFoundException(
                "Токен подтверждения не найден. Пожалуйста, убедитесь, что у вас правильный токен."
            );
        }
        const hasExpired = existingToken.expiresAt < new Date();

        if (hasExpired) {
            throw new BadRequestException(
                "Токен подтверждения истек. Пожалуйста, запросите новый токен для подтверждения."
            );
        }

        const existingUser = await this.userService.findById(existingToken.id);

        if (!existingUser) {
            throw new NotFoundException(
                "Пользователь не найден. Пожалуйста, проверьте введенный адрес электронной почты и попробуйте снова."
            );
        }

        await this.db
            .update(schema.users)
            .set({ isVerified: true })
            .where(eq(schema.users.id, existingToken.userId));

        await this.db
            .delete(schema.tokens)
            .where(eq(schema.tokens.id, existingToken.id));

        return { message: "Почта подтверждена" };
    }

    public async generateToken(userId: string) {
        const token = crypto.randomUUID();
        const expiresAt = new Date(Date.now() + 1000 * 60 * 60);

        await this.db.insert(schema.tokens).values({
            userId,
            token,
            expiresAt,
            type: "VERIFICATION",
            createdAt: new Date(),
        });

        return token;
    }
}
