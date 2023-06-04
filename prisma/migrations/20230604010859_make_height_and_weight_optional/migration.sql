-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Person" (
    "idPerson" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "dateOfBirth" TEXT NOT NULL,
    "gender" TEXT NOT NULL,
    "height" REAL,
    "weight" REAL
);
INSERT INTO "new_Person" ("dateOfBirth", "gender", "height", "idPerson", "name", "weight") SELECT "dateOfBirth", "gender", "height", "idPerson", "name", "weight" FROM "Person";
DROP TABLE "Person";
ALTER TABLE "new_Person" RENAME TO "Person";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
