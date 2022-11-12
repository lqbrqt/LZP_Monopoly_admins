import { FastifyInstance } from 'fastify';

import { audit } from '../controllers/user.controller';

const userRouter = (fastify: FastifyInstance, opts: any, next: (err?: Error) => void) => {
  fastify.post('/user_audit', audit);

  next();
};

export default userRouter;
