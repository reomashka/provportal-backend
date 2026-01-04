import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { Resend } from "resend";

@Injectable()
export class MailService {
    constructor(private configService: ConfigService) {}
    public async sendMail(to: string, link: string) {
        const resend = new Resend(
            this.configService.getOrThrow<string>("RESEND_API_KEY")
        );

        const confirmUrl = link;

        const html = `
                <div style="font-family: 'Helvetica', Arial, sans-serif; max-width: 600px; margin: auto; padding: 20px; color: #333;">
                    <h2 style="text-align: center; color: #4CAF50;">Добро пожаловать на ProvPortal!</h2>
                    <p>Спасибо за регистрацию! Чтобы активировать вашу учетную запись, пожалуйста, нажмите на кнопку ниже:</p>
                    
                    <div style="text-align: center; margin: 30px 0;">
                    <a href="${confirmUrl}" 
                        style="
                        background-color: #4CAF50; 
                        color: white; 
                        padding: 12px 24px; 
                        text-decoration: none; 
                        border-radius: 6px; 
                        display: inline-block;
                        font-weight: bold;
                        ">
                        Подтвердить Email
                    </a>
                    </div>

                    <p>Если кнопка не работает, скопируйте и вставьте ссылку в браузер:</p>
                    <p>Если вы ничего не запрашивали проигнорируйте это письмо</p>
                    <p style="word-break: break-all;">
                    <a href="${confirmUrl}" style="color: #4CAF50;">${confirmUrl}</a>
                    </p>

                    <hr style="border: none; border-top: 1px solid #eee; margin: 40px 0;" />

                    <p style="font-size: 12px; color: #888; text-align: center;">
                    Это письмо отправлено автоматически, пожалуйста, не отвечайте на него.<br/>
                    ProvPortal © ${new Date().getFullYear()}
                    </p>
                </div>
                `;

        try {
            const { data, error } = await resend.emails.send({
                from: "ProvPortal <no-reply@provportal.ru>",
                to: [to],
                subject: "Подтверждение вашей почты на ProvPortal",
                html,
            });
            if (error) {
                console.error("Ошибка отправки письма:", error);
                return false;
            }

            return true;
        } catch (err) {
            console.error("Ошибка при Resend API:", err);
            return false;
        }
    }
}
