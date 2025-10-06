import { PrismaService } from "@/prisma/prisma.service";
import { Injectable } from "@nestjs/common";
import { CreateAnouncement } from "./dto/createAnouncement.dto";

@Injectable()
export class AnnouncementService {
    constructor(private readonly prisma: PrismaService) {}

    public async getAllAnnouncements() {
        return this.prisma.announcement.findMany({
            take: 3,
            orderBy: { date: "desc" },
        });
    }

    public async createAnnouncement(dto: CreateAnouncement) {
        return this.prisma.announcement.create({
            data: {
                title: dto.title,
                description: dto.description,
                type: dto.type,
                date: dto.date,
            },
        });
    }
}
