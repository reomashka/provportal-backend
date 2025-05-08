/*
  Warnings:

  - You are about to drop the column `transportId` on the `likes` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `likes` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[user_id,transport_id]` on the table `likes` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `transport_id` to the `likes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `likes` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "likes" DROP CONSTRAINT "likes_transportId_fkey";

-- DropForeignKey
ALTER TABLE "likes" DROP CONSTRAINT "likes_userId_fkey";

-- DropIndex
DROP INDEX "likes_userId_transportId_key";

-- AlterTable
ALTER TABLE "likes" DROP COLUMN "transportId",
DROP COLUMN "userId",
ADD COLUMN     "transport_id" INTEGER NOT NULL,
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "likes_user_id_transport_id_key" ON "likes"("user_id", "transport_id");

-- AddForeignKey
ALTER TABLE "likes" ADD CONSTRAINT "likes_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "likes" ADD CONSTRAINT "likes_transport_id_fkey" FOREIGN KEY ("transport_id") REFERENCES "transport"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
