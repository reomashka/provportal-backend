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
            .select()
            .from(schema.jobs)
            .orderBy(orm.asc(schema.jobs.lvl))
            .leftJoin(
                schema.jobCitySalaries,
                orm.eq(schema.jobCitySalaries.jobId, schema.jobs.id)
            );
    }

    // getCurrentJob(id: number) {
    //     return this.prisma.job.findUnique({
    //         where: { id },
    //         include: {
    //             salaries: true,
    //         },
    //     });
    // }

    // async createJob(data: Prisma.JobCreateInput) {
    //     return this.prisma.job.create({
    //         data,
    //     });
    // }

    // async updateJob(id: number, data: Prisma.JobUncheckedUpdateInput) {
    //     return this.prisma.job.update({
    //         where: { id },
    //         data: data,
    //     });
    // }

    // async deleteJob(id: number) {
    //     return this.prisma.job.delete({
    //         where: { id: id },
    //     });
}
