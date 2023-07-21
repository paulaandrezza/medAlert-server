-- CreateTable
CREATE TABLE "Person" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "dateOfBirth" DATETIME NOT NULL,
    "gender" TEXT NOT NULL,
    "height" REAL,
    "weight" REAL
);

-- CreateTable
CREATE TABLE "MedicationType" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "type" TEXT NOT NULL,
    "hasPlural" BOOLEAN NOT NULL
);

-- CreateTable
CREATE TABLE "Medication" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "dosage" INTEGER NOT NULL,
    "frequency" INTEGER NOT NULL,
    "notes" TEXT,
    "firstSchedule" DATETIME NOT NULL,
    "personId" INTEGER NOT NULL,
    "medicationTypeId" INTEGER NOT NULL,
    CONSTRAINT "Medication_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Medication_medicationTypeId_fkey" FOREIGN KEY ("medicationTypeId") REFERENCES "MedicationType" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
