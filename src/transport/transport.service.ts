import { Injectable, NotFoundException } from "@nestjs/common";
import { PrismaService } from "@/prisma/prisma.service";
import { TransportClass } from "@prisma/client";

export interface TransportQuery {
  order?: "asc" | "desc";
  class?: TransportClass;
}

@Injectable()
export class TransportService {
  constructor(private readonly prisma: PrismaService) {}

  public async getCurrentTransport(id: number) {
    const transport = await this.prisma.transport.findUnique({
      where: { id },
    });

    if (!transport || transport.class === TransportClass.FRACTION) {
      throw new NotFoundException(
        `Transport with ID ${id} not found or it is fraction transport!`
      );
    }

    return transport;
  }

  private readonly classMap: Record<
    "passenger" | "cargo" | "public",
    TransportClass
  > = {
    passenger: TransportClass.PASSENGER,
    cargo: TransportClass.CARGO,
    public: TransportClass.PUBLIC,
  };

  public async getAll(query: TransportQuery = {}) {
    const order = query.order || "asc";
    const transportClass = query.class
      ? this.classMap[query.class as keyof typeof this.classMap]
      : undefined;

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
