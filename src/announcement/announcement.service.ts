import { Inject, Injectable } from "@nestjs/common";
import { CreateAnnouncement } from "./dto/createAnnouncement.dto";
import { DrizzleAsyncProvider } from "@/database/database.provider";
import { NodePgDatabase } from "drizzle-orm/node-postgres";
import * as schema from "../database/schema";
import * as orm from "drizzle-orm";

@Injectable()
export class AnnouncementService {
    constructor(
        @Inject(DrizzleAsyncProvider)
        private db: NodePgDatabase<typeof schema>
    ) {}

    public async getAllAnnouncements() {
        return await this.db
            .select()
            .from(schema.announcements)
            .orderBy(orm.desc(schema.announcements.date))
            .limit(3);
    }

    public async createAnnouncement(dto: CreateAnnouncement) {
        const result = await this.db
            .insert(schema.announcements)
            .values({
                title: dto.title,
                description: dto.description,
                type: dto.type,
                date: new Date(dto.date),
            })
            .returning();
        return result[0];
    }
}
