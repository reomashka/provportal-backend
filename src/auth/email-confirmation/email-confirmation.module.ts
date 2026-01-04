import { Module } from "@nestjs/common";
import { EmailConfirmationService } from "./email-confirmation.service";
import { EmailConfirmationController } from "./email-confirmation.controller";
import { DatabaseModule } from "@/database/database.module";
import { UserModule } from "@/user/user.module";

@Module({
    imports: [DatabaseModule, UserModule],
    controllers: [EmailConfirmationController],
    providers: [EmailConfirmationService],
    exports: [EmailConfirmationService],
})
export class EmailConfirmationModule {}
