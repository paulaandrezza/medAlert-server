-- CreateTable
CREATE TABLE "MedicationType" (
    "idMedication" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "type" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Medication" (
    "idMedication" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "dosage" TEXT NOT NULL,
    "frequency" TEXT NOT NULL,
    "notes" TEXT,
    "personIdPerson" INTEGER NOT NULL,
    "medicationTypeIdMedication" INTEGER NOT NULL,
    CONSTRAINT "Medication_personIdPerson_fkey" FOREIGN KEY ("personIdPerson") REFERENCES "Person" ("idPerson") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Medication_medicationTypeIdMedication_fkey" FOREIGN KEY ("medicationTypeIdMedication") REFERENCES "MedicationType" ("idMedication") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "MedicationSchedule" (
    "idMedication" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "time" TEXT NOT NULL,
    "medicationIdMedication" INTEGER NOT NULL,
    CONSTRAINT "MedicationSchedule_medicationIdMedication_fkey" FOREIGN KEY ("medicationIdMedication") REFERENCES "Medication" ("idMedication") ON DELETE RESTRICT ON UPDATE CASCADE
);
