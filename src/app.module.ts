import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { MedicationController } from './controllers/medication.controller';
import { PersonController } from './controllers/person.controller';

@Module({
  imports: [],
  controllers: [AppController, PersonController, MedicationController],
  providers: [AppService],
})
export class AppModule {}
