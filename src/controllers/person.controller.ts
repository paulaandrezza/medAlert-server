import { Controller, Get } from '@nestjs/common';
import { Person, PrismaClient } from '@prisma/client';
import { BaseController } from './base.controller';

const prisma = new PrismaClient();

@Controller('person')
export class PersonController extends BaseController<Person> {
  constructor() {
    super('person');
  }

  @Get('details')
  async getAllPeopleWithDetails(): Promise<Person[]> {
    const people = await prisma.person.findMany({
      include: {
        Medication: {
          include: {
            medicationType: true,
          },
        },
      },
    });
    return people;
  }
}
