-- CreateTable
CREATE TABLE "Action" (
    "id" TEXT NOT NULL,
    "sessionActionId" TEXT,
    "roomActionId" TEXT,
    "userActionId" TEXT,

    CONSTRAINT "Action_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Action_sessionActionId_key" ON "Action"("sessionActionId");

-- CreateIndex
CREATE UNIQUE INDEX "Action_roomActionId_key" ON "Action"("roomActionId");

-- CreateIndex
CREATE UNIQUE INDEX "Action_userActionId_key" ON "Action"("userActionId");

-- AddForeignKey
ALTER TABLE "Action" ADD CONSTRAINT "Action_sessionActionId_fkey" FOREIGN KEY ("sessionActionId") REFERENCES "SessionAction"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Action" ADD CONSTRAINT "Action_roomActionId_fkey" FOREIGN KEY ("roomActionId") REFERENCES "RoomAction"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Action" ADD CONSTRAINT "Action_userActionId_fkey" FOREIGN KEY ("userActionId") REFERENCES "UserAction"("id") ON DELETE SET NULL ON UPDATE CASCADE;
