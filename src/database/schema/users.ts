import {
    pgEnum,
    pgTable,
    uuid,
    text,
    timestamp,
    boolean,
} from "drizzle-orm/pg-core";

export const Role = pgEnum("role", ["USER", "ADMIN", "MODERATOR"]);
export const AuthMethod = pgEnum("auth_method", [
    "CREDENTIALS",
    "GOOGLE",
    "YANDEX",
]);

export type UserRole = (typeof Role.enumValues)[number];
export type AuthMethodType = (typeof AuthMethod.enumValues)[number];

export const users = pgTable("users", {
    id: uuid().defaultRandom().primaryKey().notNull(),

    name: text("name"),
    email: text("email").unique(),
    passwordHash: text("password_hash"),
    role: Role("role").notNull().default("USER"),
    authMethod: AuthMethod("auth_method").notNull().default("CREDENTIALS"),

    isBlocked: boolean("is_blocked").notNull().default(false),
    isVerified: boolean("is_verified").notNull().default(false),

    avatarUrl: text("avatar_url"),

    createdAt: timestamp("created_at").defaultNow(),
});
