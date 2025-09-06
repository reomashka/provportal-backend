-- CreateEnum
CREATE TYPE "DriveType" AS ENUM ('Передний', 'Задний', 'Полный');

-- AlterTable
ALTER TABLE "transport" ADD COLUMN     "driveType" "DriveType";
