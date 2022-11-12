/*
  Warnings:

  - Changed the type of `type` on the `RoomAction` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `type` on the `SessionAction` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `type` on the `UserAction` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- CreateEnum
CREATE TYPE "UserActionTypes" AS ENUM ('USER_SIGNIN', 'USER_SIGNUP', 'USER_WINS', 'USER_MAKES_TURN', 'USER_BUYS_PROPERTY', 'USER_TAKES_CARD', 'ADMIN_ACTION');

-- CreateEnum
CREATE TYPE "RoomActionTypes" AS ENUM ('ROOM_CREATED', 'ROOM_DELETED', 'USER_WINS', 'ROOM_TIMEOUT', 'ADMIN_ACTION');

-- CreateEnum
CREATE TYPE "SessionActionTypes" AS ENUM ('SESSION_CREATED', 'SESSION_DELETED', 'SESSION_TIMEOUT', 'ADMIN_ACTION');

-- AlterTable
ALTER TABLE "RoomAction" DROP COLUMN "type",
ADD COLUMN     "type" "RoomActionTypes" NOT NULL;

-- AlterTable
ALTER TABLE "SessionAction" DROP COLUMN "type",
ADD COLUMN     "type" "SessionActionTypes" NOT NULL;

-- AlterTable
ALTER TABLE "UserAction" DROP COLUMN "type",
ADD COLUMN     "type" "UserActionTypes" NOT NULL;

-- DropEnum
DROP TYPE "RoomActionType";

-- DropEnum
DROP TYPE "SessionActionType";

-- DropEnum
DROP TYPE "UserActionType";
