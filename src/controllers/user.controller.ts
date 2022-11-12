import { FastifyReply, FastifyRequest } from 'fastify';
import prisma from '../prisma-client';
import { UserAuditRequestBody } from './types';

const audit = async (req: FastifyRequest<{Body: UserAuditRequestBody}>, reply: FastifyReply) => {
  const data: UserAuditRequestBody = req.body;

  return prisma.userAction.create({
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
