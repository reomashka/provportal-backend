import { Body, Controller, Get, Post, UseGuards } from "@nestjs/common";
import { AnnouncementService } from "./announcement.service";
import { CreateAnnouncement } from "./dto/createAnnouncement.dto";
import { Roles } from "@/libs/common/decorators/roles.decorator";
import { RolesGuard } from "@/auth/guards/roles.guard";

@Controller("announcements")
export class AnnouncementController {
    constructor(private readonly announcementService: AnnouncementService) {}

    @Get()
    public async getAllAnnouncements() {
        return this.announcementService.getAllAnnouncements();
    }

    @Roles("ADMIN")
    @UseGuards(RolesGuard)
    @Post("create")
    public async createAnnouncement(@Body() dto: CreateAnnouncement) {
        return this.announcementService.createAnnouncement(dto);
    }
}
