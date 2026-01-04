import { Injectable } from "@nestjs/common";
import { PassportStrategy } from "@nestjs/passport";
import { Strategy as GoogleOAuthStrategy } from "passport-google-oauth20";
import { AuthService } from "../auth.service";
import { ConfigService } from "@nestjs/config";

@Injectable()
export class GoogleStrategy extends PassportStrategy(
    GoogleOAuthStrategy,
    "google"
) {
    constructor(authService: AuthService, configService: ConfigService) {
        super({
            clientID: configService.getOrThrow<string>("GOOGLE_CLIENT_ID"),
            clientSecret: configService.getOrThrow<string>(
                "GOOGLE_CLIENT_SECRET"
            ),
            callbackURL: `${configService.getOrThrow<string>("FRONTEND_URL")}/api/auth/google/callback`,
            scope: ["profile", "email"],
        });

        this.authService = authService;
        this.configService = configService;

        console.log("GoogleStrategy loaded");
    }

    private authService: AuthService;
    private configService: ConfigService;

    async validate(_, __, profile: any) {
        const user = await this.authService.validateOAuthLogin(
            profile,
            "GOOGLE"
        );
        return user;
    }
}
