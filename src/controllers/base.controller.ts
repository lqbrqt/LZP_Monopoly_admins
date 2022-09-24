import { FastifyReply, FastifyRequest } from 'fastify';

import { version } from '../../package.json';
import { SERVICE_NAME } from '../config';

const base = (req: FastifyRequest, reply: FastifyReply) => {
  reply.send({ message: `${SERVICE_NAME}, ver ${version}` });
};

export { base };
