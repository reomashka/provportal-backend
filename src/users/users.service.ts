import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma.service';

@Injectable()
export class UsersService {
  constructor(private readonly prisma: PrismaService) {}

  async findAll() {
    return this.prisma.transport.findMany();
  }

  async create() {
    const createUser = await this.prisma.users.create({
      data: {
        name: 'Alice',
        email: 'asd',
      },
    });
  }
}
