import { Controller, Get } from '@nestjs/common';
import { Person, PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

@Controller('person')
export class PersonController {
  @Get()
  async getPerson(): Promise<Person[]> {
    const users = await prisma.person.findMany();
    return users;
  }
}
