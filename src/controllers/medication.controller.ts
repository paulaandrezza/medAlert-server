import { Controller } from '@nestjs/common';
import { Medication } from '@prisma/client';
import { BaseController } from './base.controller';

@Controller('medication')
export class MedicationController extends BaseController<Medication> {
  constructor() {
    super('medication');
  }
}
