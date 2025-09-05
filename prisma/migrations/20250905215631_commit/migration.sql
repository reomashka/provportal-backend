/*
  Warnings:

  - The `gos_cost_old` column on the `transport` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "transport" DROP COLUMN "gos_cost_old",
ADD COLUMN     "gos_cost_old" INTEGER[];
