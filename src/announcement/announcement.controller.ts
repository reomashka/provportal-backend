import { Body, Controller, Get, Post } from "@nestjs/common";
import { AnnouncementService } from "./announcement.service";
import { CreateAnouncement } from "./dto/createAnouncement.dto";

@Controller("announcement")
export class AnnouncementController {
    constructor(private readonly announcementService: AnnouncementService) {}

    @Get()
    async getAllAnnouncements() {
        return this.announcementService.getAllAnnouncements();
    }

    @Post()
    async createAnouncement(@Body() dto: CreateAnouncement) {
        return this.announcementService.createAnnouncement(dto);
    }
}
