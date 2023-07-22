import { Module } from '@nestjs/common';
import { MedicationTypeController } from './controllers/MedicationType.controller';
import { MedicationController } from './controllers/medication.controller';
import { PersonController } from './controllers/person.controller';

@Module({
  imports: [],
  controllers: [
    PersonController,
    MedicationController,
    MedicationTypeController,
  ],
})
export class AppModule {}
