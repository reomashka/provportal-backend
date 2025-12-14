import { Body, Controller, Get, Post } from "@nestjs/common";
import { AnnouncementService } from "./announcement.service";
import { CreateAnnouncement } from "./dto/createAnnouncement.dto";

@Controller("announcement")
export class AnnouncementController {
    constructor(private readonly announcementService: AnnouncementService) {}

    @Get()
    async getAllAnnouncements() {
        return this.announcementService.getAllAnnouncements();
    }

    @Post("create")
    async createAnnouncement(@Body() dto: CreateAnnouncement) {
        return this.announcementService.createAnnouncement(dto);
    }
}
