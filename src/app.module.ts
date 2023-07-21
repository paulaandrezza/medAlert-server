import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { MedicationScheduleController } from './controllers/MedicationSchedule.controller';
import { MedicationTypeController } from './controllers/MedicationType.controller';
import { MedicationController } from './controllers/medication.controller';
import { PersonController } from './controllers/person.controller';

@Module({
  imports: [],
  controllers: [
    AppController,
    PersonController,
    MedicationController,
    MedicationScheduleController,
    MedicationTypeController,
  ],
  providers: [AppService],
})
export class AppModule {}
