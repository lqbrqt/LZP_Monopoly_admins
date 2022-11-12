import { FastifyReply, FastifyRequest } from 'fastify';
import prisma from '../prisma-client';
import { SessionAuditRequestBody } from './types';

const audit = async (req: FastifyRequest<{Body: SessionAuditRequestBody}>, reply: FastifyReply) => {
  const data: SessionAuditRequestBody = req.body;

  return prisma.sessionAction.create({
    data: {
      roomId: data?.roomId?.toString(),
      userId: data?.userId?.toString(),
      type: data?.type,
      timestamp: new Date(data.timestamp),
      actionLog: {
        create: {},
      },
    },
  });
};

export { audit };
