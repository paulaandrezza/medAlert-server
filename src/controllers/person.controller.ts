import {
  Body,
  Controller,
  Get,
  Param,
  ParseIntPipe,
  Post,
} from '@nestjs/common';
import { Person, PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

@Controller('person')
export class PersonController {
  @Get()
  async allPerson(): Promise<Person[]> {
    const users = await prisma.person.findMany();
    return users;
  }

  @Post()
  async createPerson(@Body() personData: Person): Promise<Person> {
    const createdPerson = await prisma.person.create({
      data: personData,
    });

    return createdPerson;
  }

  @Get(':id')
  async getPersonById(@Param('id', ParseIntPipe) id: number): Promise<Person> {
    const person = await prisma.person.findUnique({
      where: { idPerson: id },
    });
    return person;
  }
}
