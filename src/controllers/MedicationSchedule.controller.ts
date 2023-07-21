import { Controller } from '@nestjs/common';
import { MedicationSchedule } from '@prisma/client';
import { BaseController } from './base.controller';

@Controller('medicationSchedule')
export class MedicationScheduleController extends BaseController<MedicationSchedule> {
  constructor() {
    super('medicationSchedule');
  }
}
