/*
  Warnings:

  - You are about to drop the column `quantity_insurance` on the `transport` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "transport" DROP COLUMN "quantity_insurance",
ADD COLUMN     "exc_insurance" INTEGER,
ADD COLUMN     "repair_exc_ins" INTEGER,
ADD COLUMN     "repair_lite_ins" INTEGER,
ADD COLUMN     "repair_stand_ins" INTEGER,
ADD COLUMN     "repair_without_ins" INTEGER,
ADD COLUMN     "stand_insurance" INTEGER,
ALTER COLUMN "lite_insurance" DROP NOT NULL;
