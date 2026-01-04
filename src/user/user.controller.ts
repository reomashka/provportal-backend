import { Controller, ForbiddenException, Get, Req } from "@nestjs/common";
import { UserService } from "./user.service";

@Controller("users")
export class UserController {
    constructor(private readonly userService: UserService) {}

    @Get("me")
    public check(@Req() req) {
        if (!req.session?.userId) {
            throw new ForbiddenException("Не авторизован");
        }

        return this.userService.getMe(req.session?.userId);
    }
}
