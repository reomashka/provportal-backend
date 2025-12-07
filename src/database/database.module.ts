import { Module } from "@nestjs/common";
import { DrizzleAsyncProvider } from "./database.provider";
import { databaseProvider } from "./database.provider";

@Module({
    providers: [...databaseProvider],
    exports: [DrizzleAsyncProvider],
})
export class DatabaseModule {}
