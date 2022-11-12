import { RoomActionTypes } from '@prisma/client';

export interface RoomAuditRequestBody {
    type: RoomActionTypes,
    message: string,
    roomId: number,
    userId?: number,
    timestamp: number,
}
