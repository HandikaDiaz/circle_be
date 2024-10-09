-- DropForeignKey
ALTER TABLE "like" DROP CONSTRAINT "like_replyId_fkey";

-- AlterTable
ALTER TABLE "like" ALTER COLUMN "replyId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "like" ADD CONSTRAINT "like_replyId_fkey" FOREIGN KEY ("replyId") REFERENCES "reply"("id") ON DELETE SET NULL ON UPDATE CASCADE;
