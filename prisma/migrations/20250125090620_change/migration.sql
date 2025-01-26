/*
  Warnings:

  - You are about to drop the column `EPP` on the `transport` table. All the data in the column will be lost.
  - Added the required column `epp` to the `transport` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "transport" DROP COLUMN "EPP",
ADD COLUMN     "epp" TEXT NOT NULL;
