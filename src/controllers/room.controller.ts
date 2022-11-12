import { FastifyReply, FastifyRequest } from 'fastify';
import prisma from '../prisma-client';
import { RoomAuditRequestBody } from './types';

const audit = async (req: FastifyRequest<{Body: RoomAuditRequestBody}>, reply: FastifyReply) => {
  const data: RoomAuditRequestBody = req.body;

  return prisma.roomAction.create({
    data: {
      roomId: data?.roomId?.toString(),
      userId: data?.userId?.toString(),
      type: data?.type,
      timestamp: new Date(data.timestamp),
      actionLog: {
        create: {
        },
      },
    },
  });
};

export { audit };
