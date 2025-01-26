-- AlterTable
ALTER TABLE "transport" ALTER COLUMN "full_speed" DROP NOT NULL,
ALTER COLUMN "speed_100_time" DROP NOT NULL,
ALTER COLUMN "speed_max_time" DROP NOT NULL;
