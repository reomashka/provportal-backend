import { Injectable } from "@nestjs/common";
import { PassportStrategy } from "@nestjs/passport";
import { Strategy as GoogleOAuthStrategy } from "passport-google-oauth20";
import * as schema from "../../database/schema";
import { AuthService } from "../auth.service";

@Injectable()
export class GoogleStrategy extends PassportStrategy(
    GoogleOAuthStrategy,
    "google"
) {
    constructor(private authService: AuthService) {
        const clientId = process.env.GOOGLE_CLIENT_ID;
        const clientSecret = process.env.GOOGLE_CLIENT_SECRET;

        if (!clientId || !clientSecret) {
            throw new Error(
                "GOOGLE_CLIENT_ID и GOOGLE_CLIENT_SECRET должны быть заданы"
            );
        }

        super({
            clientID: clientId,
            clientSecret: clientSecret,
            callbackURL: "http://localhost:3000/api/auth/google/callback",
            scope: ["profile", "email"],
        });
        console.log("GoogleStrategy loaded");
    }

    async validate(_, __, profile: any) {
        const user = await this.authService.validateOAuthLogin(
            profile,
            "GOOGLE"
        );
        return user;
    }
}
