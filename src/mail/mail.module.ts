import { Module } from "@nestjs/common";
import { MailService } from "./mail.service";
import { MailController } from "./mail.controller";
import { MailerModule } from "@nestjs-modules/mailer";

@Module({
    imports: [
        MailerModule.forRoot({
            transport: {
                host: "smtp.provportal.ru",
                port: 587,
                secure: false,
                auth: {
                    user: "no-reply@provportal.ru",
                    pass: "password",
                },
            },
            defaults: {
                from: '"ProvPortal" <no-reply@provportal.ru>',
            },
        }),
    ],
    controllers: [MailController],
    providers: [MailService],
    exports: [MailService],
})
export class MailModule {}
