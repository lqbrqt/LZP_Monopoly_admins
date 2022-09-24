export enum RoomActionTypes {
    ROOM_CREATED,
    ROOM_DELETED,
    USER_WINS,
    ROOM_TIMEOUT,
    ADMIN_ACTION
}

export interface RoomAuditRequestBody {
    type: RoomActionTypes,
    message: string,
}
