import {
    Body,
    Controller,
    ForbiddenException,
    Get,
    Post,
    Query,
    Req,
    Res,
    Session,
    UseGuards,
} from "@nestjs/common";
import { AuthService } from "./auth.service";
import { RegisterUser } from "./dto/registerUser.dto";
import { LoginUser } from "./dto/loginUser.dto";
import { AuthGuard } from "@nestjs/passport";
import { ConfigService } from "@nestjs/config";

@Controller("auth")
export class AuthController {
    constructor(
        private readonly authService: AuthService,
        private configService: ConfigService
    ) {}

    @Post("register")
    public async register(@Body() dto: RegisterUser, @Req() req) {
        return this.authService.register(dto, req);
    }

    @Post("login")
    public async login(@Body() dto: LoginUser, @Req() req) {
        return this.authService.login(dto, req);
    }

    @Post("logout")
    public logout(@Session() session: Record<string, any>) {
        session.destroy((err) => {
            if (err) throw new Error("Failed to logout");
        });
        return { message: "Logged out" };
    }

    @Get("yandex")
    @UseGuards(AuthGuard("yandex"))
    yandexAuth() {}

    @Get("yandex/callback")
    @UseGuards(AuthGuard("yandex"))
    async yandexAuthRedirect(@Req() req, @Res() res) {
        await this.authService.saveSession(req, req.user.id);
        return res.redirect(
            this.configService.getOrThrow<string>("FRONTEND_URL")
        );
    }

    @Get("google")
    @UseGuards(AuthGuard("google"))
    googleAuth() {}

    @Get("google/callback")
    @UseGuards(AuthGuard("google"))
    async googleAuthRedirect(@Req() req, @Res() res) {
        await this.authService.saveSession(req, req.user.id);
        return res.redirect(
            this.configService.getOrThrow<string>("FRONTEND_URL")
        );
    }
}
