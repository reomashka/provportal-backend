/*
  Warnings:

  - The `showroom` column on the `transport` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "transport" DROP COLUMN "showroom",
ADD COLUMN     "showroom" "Showroom";
