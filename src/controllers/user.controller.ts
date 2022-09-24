import { FastifyReply, FastifyRequest } from 'fastify';
import { RoomAuditRequestBody } from './types';

const audit = (req: FastifyRequest<{Body: RoomAuditRequestBody}>, reply: FastifyReply) => {
  const room_info = req.body;

  return room_info;
};

export { audit };
