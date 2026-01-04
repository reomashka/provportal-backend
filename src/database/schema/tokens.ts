import { uuid, pgTable, text, timestamp } from "drizzle-orm/pg-core";
import { users } from "./users";
import { pgEnum } from "drizzle-orm/pg-core";

export const TokenType = pgEnum("token_type", [
    "VERIFICATION",
    "TWO_FACTOR",
    "PASSWORD_RESET",
]);

export type TokenType = (typeof TokenType.enumValues)[number];

export const tokens = pgTable("tokens", {
    id: uuid().defaultRandom().primaryKey(),

    token: text("token").notNull().unique(),
    userId: uuid("user_id")
        .notNull()
        .references(() => users.id),
    type: TokenType("token_type"),

    createdAt: timestamp("created_at").notNull(),
    expiresAt: timestamp("expires_at").notNull(),
});
