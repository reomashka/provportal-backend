import { Injectable } from "@nestjs/common";
import { PassportStrategy } from "@nestjs/passport";
import { Strategy as YandexOAuthStrategy } from "passport-yandex";

import { AuthService } from "../auth.service";

@Injectable()
export class YandexStrategy extends PassportStrategy(
    YandexOAuthStrategy,
    "yandex"
) {
    constructor(private authService: AuthService) {
        const clientId = process.env.YANDEX_CLIENT_ID;
        const clientSecret = process.env.YANDEX_CLIENT_SECRET;

        if (!clientId || !clientSecret) {
            throw new Error(
                "YANDEX_CLIENT_ID и YANDEX_CLIENT_SECRET должны быть заданы"
            );
        }
        super({
            clientID: clientId,
            clientSecret: clientSecret,
            callbackURL: "http://localhost:3000/api/auth/yandex/callback",
            scope: ["login:email", "login:info"],
        } as any);
        console.log("YandexStrategy loaded");
    }

    async validate(_, __, profile: any) {
        const user = await this.authService.validateOAuthLogin(
            profile,
            "YANDEX"
        );
        return user;
    }
}
