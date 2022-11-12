/*
  Warnings:

  - Added the required column `timestamp` to the `RoomAction` table without a default value. This is not possible if the table is not empty.
  - Added the required column `timestamp` to the `SessionAction` table without a default value. This is not possible if the table is not empty.
  - Added the required column `timestamp` to the `UserAction` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "RoomAction" ADD COLUMN     "timestamp" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "SessionAction" ADD COLUMN     "timestamp" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "UserAction" ADD COLUMN     "timestamp" TIMESTAMP(3) NOT NULL;
