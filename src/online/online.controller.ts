import { Controller, Get } from '@nestjs/common';
import { OnlineService } from './online.service';

@Controller('online')
export class OnlineController {
  constructor(private readonly onlineService: OnlineService) {}

  @Get()
  async getServers() {
    return this.onlineService.getServers();
  }
}
