import { Injectable } from "@nestjs/common";
import { PassportStrategy } from "@nestjs/passport";
import { Strategy as YandexOAuthStrategy } from "passport-yandex";
import { AuthService } from "../auth.service";
import { ConfigService } from "@nestjs/config";

@Injectable()
export class YandexStrategy extends PassportStrategy(
    YandexOAuthStrategy,
    "yandex"
) {
    private authService: AuthService;

    constructor(authService: AuthService, configService: ConfigService) {
        super({
            clientID: configService.getOrThrow<string>("YANDEX_CLIENT_ID"),
            clientSecret: configService.getOrThrow<string>(
                "YANDEX_CLIENT_SECRET"
            ),
            callbackURL: `${configService.getOrThrow<string>("FRONTEND_URL")}/api/auth/yandex/callback`,
            scope: ["login:email", "login:info"],
        } as any);

        this.authService = authService;

        console.log("YandexStrategy loaded");
    }

    async validate(_: string, __: string, profile: any) {
        return this.authService.validateOAuthLogin(profile, "YANDEX");
    }
}
