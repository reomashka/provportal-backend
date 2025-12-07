import { pgEnum, pgTable, integer, text, timestamp } from "drizzle-orm/pg-core";

export const AccessoryCategory = pgEnum("accessory_category", [
    "HEADWEAR",
    "ACCESSORY",
    "BAG",
    "CAR_ACCESSORY",
]);

export const AccessorySubtype = pgEnum("accessory_subtype", [
    // Headwear
    "CAP",
    "HAT",
    "HELMET",
    "BUCKET_HAT",
    "BEANIE",
    // Accessories
    "GLASSES",
    "MASK",
    "UMBRELLA",
    "BACK_ACCESSORY",
    "TENT",
    "SPEAKER",
    "HEADPHONES",
    "GUITAR",
    // Bags
    "BACKPACK",
    "WAIST_BAG",
    "GUITAR_CASE",
    "CLUTCH",
    "BRIEFCASE",
    "TRAVEL_BAG",
    "BAG",
    // Car Accessories
    "VINYL",
    "RIMS",
    "LICENSE_PLATE_FRAME",
]);

export const Currency = pgEnum("currency", [
    "PUMPKINS",
    "BP_LEVEL",
    "CASE",
    "FLOWERS",
    "VIRTS",
    "MANDARINS",
]);

export const events = pgTable("events", {
    id: integer("id").primaryKey().generatedAlwaysAsIdentity(),
    name: text("name").notNull(),
    startDate: timestamp("start_date", { mode: "date" }),
    endDate: timestamp("end_date", { mode: "date" }),
});

export const items = pgTable("items", {
    id: integer("id").primaryKey().generatedAlwaysAsIdentity(),
    name: text("name").notNull(),
    category: AccessoryCategory("category").notNull(),
    subtype: AccessorySubtype("subtype"),

    price: integer("price"),
    currency: Currency("currency"),
    slots: integer("slots"),

    eventId: integer("event_id").references(() => events.id),
});
