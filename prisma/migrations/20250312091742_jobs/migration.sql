/*
  Warnings:

  - You are about to drop the column `uniqueName` on the `jobs` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[unique_name]` on the table `jobs` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `unique_name` to the `jobs` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "jobs_uniqueName_key";

-- AlterTable
ALTER TABLE "jobs" DROP COLUMN "uniqueName",
ADD COLUMN     "unique_name" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "jobs_unique_name_key" ON "jobs"("unique_name");
