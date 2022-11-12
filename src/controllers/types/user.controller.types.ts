import { UserActionTypes } from '@prisma/client';

export interface UserAuditRequestBody {
    type: UserActionTypes,
    message: string,
    roomId?: number,
    userId: number,
    timestamp: number,
}
