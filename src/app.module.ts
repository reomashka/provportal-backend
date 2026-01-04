import { Module } from "@nestjs/common";
import { TransportModule } from "./transport/transport.module";
import { OnlineModule } from "./online/online.module";
import { JobsModule } from "./jobs/jobs.module";
import { ConfigModule } from "@nestjs/config";
import { IS_DEV_ENV } from "./libs/common/utils/is-dev.util";
import { AnnouncementModule } from "./announcement/announcement.module";
import { UploadModule } from "./upload/upload.module";
import { DatabaseModule } from "./database/database.module";
import { ItemModule } from "./item/item.module";
import { AuthModule } from "./auth/auth.module";
import { UserModule } from "./user/user.module";
import { EmailConfirmationModule } from "./auth/email-confirmation/email-confirmation.module";
import { MailModule } from './mail/mail.module';

@Module({
    imports: [
        TransportModule,
        OnlineModule,
        JobsModule,
        ConfigModule.forRoot({
            ignoreEnvFile: !IS_DEV_ENV,
            isGlobal: true,
        }),
        DatabaseModule,
        AnnouncementModule,
        UploadModule,
        DatabaseModule,
        ItemModule,
        AuthModule,
        UserModule,
        EmailConfirmationModule,
        MailModule,
    ],
    controllers: [],
    providers: [],
})
export class AppModule {}
