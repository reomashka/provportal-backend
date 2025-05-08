import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '@/prisma/prisma.service';

export interface TransportQuery {
  order?: 'asc' | 'desc';
  class?: 'moto' | 'passenger' | 'cargo' | 'public' | 'container' | 'exclusive' | 'fraction';
}

@Injectable()
export class TransportService {
  constructor(private readonly prisma: PrismaService) {}

  async getOne(id: number) {
    const transport = await this.prisma.transport.findUnique({
      where: { id },
    });
    if (!transport || transport.class === 'fraction') {
      throw new NotFoundException(`Transport with ID ${id} not found or it is fraction transport!`);
    }
    return transport;
  }

  getAll(query: TransportQuery = {}) {
    const order = query.order || 'asc';
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

  async getLikedTransport(userId: number) {
    const user = await this.prisma.user.findUnique({
      where: { id: userId },
      include: { likes: { include: { transport: true } } },
    });

    if (!user) {
      throw new NotFoundException('Пользователь не найден');
    }

    return user;
  }
}
