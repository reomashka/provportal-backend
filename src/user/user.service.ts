import { Inject, Injectable } from "@nestjs/common";
import * as schema from "@/database/schema";
import { NodePgDatabase } from "drizzle-orm/node-postgres";
import { DrizzleAsyncProvider } from "@/database/database.provider";
import { eq } from "drizzle-orm";
import { hash } from "crypto";

@Injectable()
export class UserService {
    constructor(
        @Inject(DrizzleAsyncProvider)
        private db: NodePgDatabase<typeof schema>
    ) {}

    public async findByEmail(email: string) {
        return this.db
            .select()
            .from(schema.users)
            .where(eq(schema.users.email, email));
    }

    public async findById(id: string) {
        return this.db
            .select()
            .from(schema.users)
            .where(eq(schema.users.id, id));
    }

    public async markVerified(userId: string) {
        return this.db
            .update(schema.users)
            .set({ isVerified: true })
            .where(eq(schema.users.id, userId));
    }

    public async getMe(userId: string) {
        const [user] = await this.db
            .select()
            .from(schema.users)
            .where(eq(schema.users.id, userId));

        const { passwordHash, ...safeUser } = user;
        return safeUser;
    }
}
