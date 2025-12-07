import { DrizzleAsyncProvider } from "@/database/database.provider";
import { Inject, Injectable } from "@nestjs/common";
import { NodePgDatabase } from "drizzle-orm/node-postgres";
import * as schema from "../database/schema";
import { eq } from "drizzle-orm";

@Injectable()
export class ItemService {
    constructor(
        @Inject(DrizzleAsyncProvider)
        private db: NodePgDatabase<typeof schema>
    ) {}

    public async getAllItems() {
        const items = await this.db
            .select({
                itemId: schema.items.id,
                itemName: schema.items.name,
                itemCategory: schema.items.category,
                itemSubtype: schema.items.subtype,
                itemPrice: schema.items.price,
                itemCurrency: schema.items.currency,
                eventId: schema.events.id,
                eventName: schema.events.name,
                eventStart: schema.events.startDate,
                eventEnd: schema.events.endDate,
            })
            .from(schema.items)
            .leftJoin(
                schema.events,
                eq(schema.events.id, schema.items.eventId)
            );

        return items;
    }
}
