/*
  Warnings:

  - A unique constraint covering the columns `[postId,replyId]` on the table `like` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "like_postId_replyId_key" ON "like"("postId", "replyId");
