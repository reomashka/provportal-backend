import { Body, Controller, Post } from "@nestjs/common";
import { EmailConfirmationService } from "./email-confirmation.service";
import { ConfirmationDto } from "./dto/confirmation.dto";

@Controller("auth/email-confirmation")
export class EmailConfirmationController {
    constructor(
        private readonly emailConfirmationService: EmailConfirmationService
    ) {}

    @Post()
    public async newVerification(@Body() dto: ConfirmationDto) {
        return this.emailConfirmationService.newVerification(dto);
    }
}
