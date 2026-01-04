import { Inject, Injectable } from "@nestjs/common";
import { NodePgDatabase } from "drizzle-orm/node-postgres";
import * as schema from "../database/schema";
import { DrizzleAsyncProvider } from "@/database/database.provider";
import * as orm from "drizzle-orm";

export interface TransportQuery {
    order?: "asc" | "desc";
    class: schema.TransportClassEnum;
}

@Injectable()
export class TransportService {
    constructor(
        @Inject(DrizzleAsyncProvider)
        private db: NodePgDatabase<typeof schema>
    ) {}

    public async getCurrentTransport(id: number) {
        const [transport] = await this.db
            .select()
            .from(schema.transport)
            .where(orm.eq(schema.transport.id, id));

        return transport;
    }

    public async getNamesTransport() {
        const transportNames = await this.db
            .select({
                id: schema.transport.id,
                name: schema.transport.name,
            })
            .from(schema.transport);

        return transportNames;
    }

    public async getAll(query: TransportQuery) {
        const order = query.order || "asc";
        const transportClass = query.class;

        const transport = await this.db
            .select()
            .from(schema.transport)
            .where(orm.eq(schema.transport.class, transportClass))
            .orderBy(schema.transport.price);

        return transport;
    }
}
