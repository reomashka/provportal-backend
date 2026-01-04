import { Inject, Injectable } from "@nestjs/common";
import { DrizzleAsyncProvider } from "@/database/database.provider";
import { NodePgDatabase } from "drizzle-orm/node-postgres";
import * as schema from "../database/schema";
import * as orm from "drizzle-orm";

@Injectable()
export class JobsService {
    constructor(
        @Inject(DrizzleAsyncProvider)
        private db: NodePgDatabase<typeof schema>
    ) {}

    getJobs() {
        return this.db
            .select({
                id: schema.jobs.id,
                name: schema.jobs.name,
                lvl: schema.jobs.lvl,
                about: schema.jobs.about,
                description: schema.jobs.description,
                salaries: orm.sql`coalesce(
        json_agg(json_build_object(
          'id', ${schema.jobCitySalaries.id},
          'amount', ${schema.jobCitySalaries.amount},
          'city', ${schema.jobCitySalaries.city},
          'stops', ${schema.jobCitySalaries.stops},
          'exp', ${schema.jobCitySalaries.exp},
          'time', ${schema.jobCitySalaries.time}
        )) filter (where ${schema.jobCitySalaries.id} is not null), '[]')`,
            })
            .from(schema.jobs)
            .leftJoin(
                schema.jobCitySalaries,
                orm.eq(schema.jobCitySalaries.jobId, schema.jobs.id)
            )
            .groupBy(
                schema.jobs.id,
                schema.jobs.name,
                schema.jobs.lvl,
                schema.jobs.about,
                schema.jobs.description
            )
            .orderBy(orm.asc(schema.jobs.lvl));
    }

    public async getCurrentJob(id: number) {
        const [result] = await this.db
            .select({
                id: schema.jobs.id,
                name: schema.jobs.name,
                lvl: schema.jobs.lvl,
                about: schema.jobs.about,
                description: schema.jobs.description,
                salaries: orm.sql`coalesce(
        json_agg(json_build_object(
          'id', ${schema.jobCitySalaries.id},
          'amount', ${schema.jobCitySalaries.amount},
          'city', ${schema.jobCitySalaries.city},
          'stops', ${schema.jobCitySalaries.stops},
          'exp', ${schema.jobCitySalaries.exp},
          'time', ${schema.jobCitySalaries.time}
        )) filter (where ${schema.jobCitySalaries.id} is not null), '[]')`,
            })
            .from(schema.jobs)
            .where(orm.eq(schema.jobs.id, id))
            .leftJoin(
                schema.jobCitySalaries,
                orm.eq(schema.jobCitySalaries.jobId, schema.jobs.id)
            )
            .groupBy(
                schema.jobs.id,
                schema.jobs.name,
                schema.jobs.lvl,
                schema.jobs.about,
                schema.jobs.description
            );

        return result;
    }
}
