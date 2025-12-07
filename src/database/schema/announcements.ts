import { pgEnum, pgTable, serial, text, timestamp } from "drizzle-orm/pg-core";

export const AnnouncementType = pgEnum("announcement_type", ["NEWS", "UPDATE"]);

export const announcements = pgTable("announcements", {
    id: serial("id").primaryKey(),
    title: text("title"),
    description: text("description"),
    type: AnnouncementType("type"),
    date: timestamp("date"),
});
