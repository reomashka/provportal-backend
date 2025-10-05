import { PrismaService } from "@/prisma/prisma.service";
import { Injectable } from "@nestjs/common";

@Injectable()
export class AnnouncementService {
    constructor(private readonly prisma: PrismaService) {}

    public async getAllAnnouncements() {
        return this.prisma.announcement.findMany({
            take: 3,
            orderBy: { date: "desc" },
        });
    }
}
