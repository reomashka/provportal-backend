import { Module } from "@nestjs/common";
import { AuthService } from "./auth.service";
import { AuthController } from "./auth.controller";
import { DatabaseModule } from "@/database/database.module";
import { PassportModule } from "@nestjs/passport";
import { YandexStrategy } from "./strategies/yandex.strategy";
import { GoogleStrategy } from "./strategies/google.strategy";
import { EmailConfirmationModule } from "./email-confirmation/email-confirmation.module";
import { MailModule } from "@/mail/mail.module";

@Module({
    imports: [
        DatabaseModule,
        PassportModule.register({ session: true }),
        EmailConfirmationModule,
        MailModule,
    ],
    controllers: [AuthController],
    providers: [AuthService, YandexStrategy, GoogleStrategy],
})
export class AuthModule {}
