import { SessionActionTypes } from '@prisma/client';

export interface SessionAuditRequestBody {
    type: SessionActionTypes,
    message: string,
    roomId?: number,
    userId: number,
    timestamp: number,
}
