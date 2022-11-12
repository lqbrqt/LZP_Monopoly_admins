import { FastifyInstance } from 'fastify';

import { audit } from '../controllers/room.controller';

const roomRouter = (fastify: FastifyInstance, opts: any, next: (err?: Error) => void) => {
  fastify.post('/room_audit', audit);

  next();
};

export default roomRouter;
