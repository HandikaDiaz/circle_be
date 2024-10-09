/*
  Warnings:

  - Added the required column `replyId` to the `like` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "like" ADD COLUMN     "replyId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "like" ADD CONSTRAINT "like_replyId_fkey" FOREIGN KEY ("replyId") REFERENCES "reply"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
