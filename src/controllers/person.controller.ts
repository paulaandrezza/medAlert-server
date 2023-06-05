import { Controller } from '@nestjs/common';
import { Person } from '@prisma/client';
import { BaseController } from './base.controller';

@Controller('person')
export class PersonController extends BaseController<Person> {
  constructor() {
    super('person');
  }
}
