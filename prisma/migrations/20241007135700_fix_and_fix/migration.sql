/*
  Warnings:

  - A unique constraint covering the columns `[userId,replyId]` on the table `like` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "like_userId_postId_replyId_key";

-- CreateIndex
CREATE UNIQUE INDEX "like_userId_replyId_key" ON "like"("userId", "replyId");
