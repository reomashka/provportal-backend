-- CreateEnum
CREATE TYPE "UpdateType" AS ENUM ('Новости', 'Обновление');

-- AlterEnum
ALTER TYPE "Showroom" ADD VALUE 'Тихий Огонёк';

-- CreateTable
CREATE TABLE "announcements" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "type" "UpdateType" NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "announcements_pkey" PRIMARY KEY ("id")
);
