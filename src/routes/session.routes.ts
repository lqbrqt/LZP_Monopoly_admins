import { FastifyInstance } from 'fastify';

import { audit } from '../controllers/session.controller';

const sessionRouter = (fastify: FastifyInstance, opts: any, next: (err?: Error) => void) => {
  fastify.post('/session_audit', audit);

  next();
};

export default sessionRouter;
