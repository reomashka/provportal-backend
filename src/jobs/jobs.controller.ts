import {
    Body,
    Controller,
    Delete,
    Get,
    Param,
    ParseIntPipe,
    Post,
    Put,
} from "@nestjs/common";
import { JobsService } from "./jobs.service";

@Controller("jobs")
export class JobsController {
    constructor(private readonly jobsService: JobsService) {}

    @Get()
    getJobs() {
        return this.jobsService.getJobs();
    }

    // @Get(":id/")
    // getCurrentJob(@Param("id") id: number) {
    //     return this.jobsService.getCurrentJob(Number(id));
    // }

    // @Post()
    // async createJob(@Body() data: Prisma.JobCreateInput) {
    //     return this.jobsService.createJob(data);
    // }

    // @Put(":id")
    // async updateJob(
    //     @Param("id") id: string,
    //     @Body() data: Prisma.JobUncheckedUpdateInput
    // ) {
    //     return this.jobsService.updateJob(Number(id), data);
    // }

    // @Delete(":id")
    // async deleteJob(@Param("id", ParseIntPipe) id: number) {
    //     return this.jobsService.deleteJob(id);
    // }
}
