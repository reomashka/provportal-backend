/*
  Warnings:

  - A unique constraint covering the columns `[unique_name]` on the table `transport` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateTable
CREATE TABLE "jobs" (
    "id" SERIAL NOT NULL,
    "uniqueName" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "lvl" INTEGER NOT NULL,
    "city" TEXT NOT NULL,
    "about" TEXT NOT NULL,
    "html_description_code" TEXT NOT NULL,
    "settings" INTEGER NOT NULL,

    CONSTRAINT "jobs_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "jobs_uniqueName_key" ON "jobs"("uniqueName");

-- CreateIndex
CREATE UNIQUE INDEX "transport_unique_name_key" ON "transport"("unique_name");
