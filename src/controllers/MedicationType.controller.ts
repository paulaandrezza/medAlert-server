import { Controller } from '@nestjs/common';
import { MedicationType } from '@prisma/client';
import { BaseController } from './base.controller';

@Controller('medicationType')
export class MedicationTypeController extends BaseController<MedicationType> {
  constructor() {
    super('medicationType');
  }
}
