import { NestFactory } from "@nestjs/core";
import { AppModule } from "./app.module";
import { ConfigService } from "@nestjs/config";
import IOredis from "ioredis";

import * as cookieParser from "cookie-parser";
import { ValidationPipe } from "@nestjs/common";
import * as session from "express-session";
import { ms } from "./libs/common/utils/ms.util";
import { parseBoolean } from "./libs/common/utils/parse-boolean.util";
import { RedisStore } from "connect-redis";

import * as express from "express";
import * as passport from "passport";
import { join } from "path";

async function bootstrap() {
    const app = await NestFactory.create(AppModule);

    const config = app.get(ConfigService);
    const redis = new IOredis(config.getOrThrow<string>("REDIS_URI"));

    app.use(cookieParser(config.getOrThrow<string>("COOKIES_SECRET")));

    app.useGlobalPipes(
        new ValidationPipe({
            transform: true,
        })
    );

    app.use(
        (session as any)({
            secret: config.getOrThrow<string>("SESSION_SECRET"),
            name: config.getOrThrow<string>("SESSION_NAME"),
            resave: true,
            saveUninitialized: false,
            cookie: {
                domain: config.getOrThrow<string>("SESSION_DOMAIN"),
                maxAge: ms(config.getOrThrow("SESSION_MAX_AGE")),
                httpOnly: parseBoolean(
                    config.getOrThrow<string>("SESSION_HTTP_ONLY")
                ),
                secure: parseBoolean(
                    config.getOrThrow<string>("SESSION_SECURE")
                ),
                sameSite: "lax",
            },
            store: new RedisStore({
                client: redis,
                prefix: config.getOrThrow<string>("SESSION_FOLDER"),
            }),
        })
    );

    app.use(passport.initialize());
    app.use(passport.session());

    app.enableCors({
        origin: config.getOrThrow<string>("ALLOWED_ORIGIN"),
        credentials: true,
        exposedHeaders: ["set-cookie"],
    });

    app.setGlobalPrefix("api");

    app.use(
        "/uploads",
        express.static(join(process.cwd(), "uploads"), {
            maxAge: "1y",
            immutable: true,
        })
    );

    await app.listen(config.getOrThrow<number>("APPLICATION_PORT"));
}
bootstrap();
