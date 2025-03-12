import { Body, Controller, Delete, Get, Param, ParseIntPipe, Post, Put } from '@nestjs/common';
import { JobsService } from './jobs.service';
import { Prisma, PrismaClient } from '@prisma/client';

@Controller('jobs')
export class JobsController {
  constructor(private readonly jobsService: JobsService) {}

  @Get('')
  getJobs() {
    return this.jobsService.getJobs();
  }

  @Post()
  async createJob(@Body() data: Prisma.JobsCreateInput) {
    return this.jobsService.createJob(data);
  }

  @Put(':id')
  async updateJob(@Param('id') id: string, @Body() data: Prisma.JobsUncheckedUpdateInput) {
    return this.jobsService.updateJob(Number(id), data);
  }

  @Delete(':id')
  async deleteJob(@Param('id', ParseIntPipe) id: number) {
    return this.jobsService.deleteJob(id);
  }
}
