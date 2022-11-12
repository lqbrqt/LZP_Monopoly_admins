-- CreateEnum
CREATE TYPE "UserActionType" AS ENUM ('USER_SIGNIN', 'USER_SIGNUP', 'USER_WINS', 'USER_MAKES_TURN', 'USER_BUYS_PROPERTY', 'USER_TAKES_CARD', 'ADMIN_ACTION');

-- CreateEnum
CREATE TYPE "RoomActionType" AS ENUM ('ROOM_CREATED', 'ROOM_DELETED', 'USER_WINS', 'ROOM_TIMEOUT', 'ADMIN_ACTION');

-- CreateEnum
CREATE TYPE "SessionActionType" AS ENUM ('SESSION_CREATED', 'SESSION_DELETED', 'SESSION_TIMEOUT', 'ADMIN_ACTION');

-- CreateTable
CREATE TABLE "Game" (
    "id" TEXT NOT NULL,
    "winnerId" TEXT,

    CONSTRAINT "Game_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserAction" (
    "id" TEXT NOT NULL,
    "roomId" TEXT,
    "userId" TEXT NOT NULL,
    "gameId" TEXT,
    "type" "UserActionType" NOT NULL,
    "message" TEXT,

    CONSTRAINT "UserAction_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "RoomAction" (
    "id" TEXT NOT NULL,
    "roomId" TEXT NOT NULL,
    "userId" TEXT,
    "gameId" TEXT,
    "type" "RoomActionType" NOT NULL,
    "message" TEXT,

    CONSTRAINT "RoomAction_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SessionAction" (
    "id" TEXT NOT NULL,
    "roomId" TEXT,
    "userId" TEXT,
    "type" "SessionActionType" NOT NULL,
    "message" TEXT,

    CONSTRAINT "SessionAction_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "UserAction" ADD CONSTRAINT "UserAction_gameId_fkey" FOREIGN KEY ("gameId") REFERENCES "Game"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RoomAction" ADD CONSTRAINT "RoomAction_gameId_fkey" FOREIGN KEY ("gameId") REFERENCES "Game"("id") ON DELETE SET NULL ON UPDATE CASCADE;
