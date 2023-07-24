-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Medication" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "dosage" INTEGER NOT NULL,
    "frequency" INTEGER NOT NULL,
    "notes" TEXT,
    "firstSchedule" DATETIME NOT NULL,
    "personId" INTEGER NOT NULL,
    "medicationTypeId" INTEGER NOT NULL,
    CONSTRAINT "Medication_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "Medication_medicationTypeId_fkey" FOREIGN KEY ("medicationTypeId") REFERENCES "MedicationType" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Medication" ("dosage", "firstSchedule", "frequency", "id", "medicationTypeId", "name", "notes", "personId") SELECT "dosage", "firstSchedule", "frequency", "id", "medicationTypeId", "name", "notes", "personId" FROM "Medication";
DROP TABLE "Medication";
ALTER TABLE "new_Medication" RENAME TO "Medication";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
