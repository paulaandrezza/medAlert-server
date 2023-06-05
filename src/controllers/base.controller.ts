import { Body, Get, Param, ParseIntPipe, Post } from '@nestjs/common';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

export class BaseController<T> {
  constructor(private readonly modelName: string) {}

  @Get()
  async getAll(): Promise<T[]> {
    const entities = await prisma[this.modelName].findMany();
    return entities;
  }

  @Post()
  async create(@Body() entityData: T): Promise<T> {
    const createdEntity = await prisma[this.modelName].create({
      data: entityData,
    });
    return createdEntity;
  }

  @Get(':id')
  async getById(@Param('id', ParseIntPipe) id: number): Promise<T> {
    const entity = await prisma[this.modelName].findUnique({
      where: { id },
    });
    return entity;
  }
}
