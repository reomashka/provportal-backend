import { Injectable } from "@nestjs/common";
import { PrismaService } from "@/prisma/prisma.service";
import { Prisma } from "@prisma/client";

@Injectable()
export class JobsService {
  constructor(private readonly prisma: PrismaService) {}

  getJobs() {
    return this.prisma.jobs.findMany({ orderBy: { lvl: "asc" } });
  }

  async createJob(data: Prisma.JobsCreateInput) {
    return this.prisma.jobs.create({
      data,
    });
  }

  async updateJob(id: number, data: Prisma.JobsUncheckedUpdateInput) {
    return this.prisma.jobs.update({
      where: { id },
      data: data,
    });
  }

  async deleteJob(id: number) {
    return this.prisma.jobs.delete({
      where: { id: id },
    });
  }
}
