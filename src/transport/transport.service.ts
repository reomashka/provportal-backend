import { Injectable } from "@nestjs/common";
import { PrismaService } from "src/prisma.service";

@Injectable()
export class TransportService {
  constructor(private readonly prisma: PrismaService) {}

  findAll(
    query: {
      order?: "asc" | "desc";
      class?: "passenger" | "moto";
    } = {},
  ) {
    const order = query.order || "asc";
    const transportClass = query.class;
    return this.prisma.transport.findMany({
      where: {
        class: transportClass,
      },
      orderBy: {
        price: order,
      },
    });
  }
}
