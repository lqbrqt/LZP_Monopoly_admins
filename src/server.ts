import fastify from 'fastify';

import { PORT } from './config';
import { logger } from './logger';
import baseRoute from './routes/base.routes';
import userRoute from './routes/user.routes';
import sessionRoute from './routes/session.routes';
import roomRoute from './routes/room.routes';

import httpAdapter from './integrations/http-adapter/index';

const server = fastify();

server.register(baseRoute);
server.register(userRoute);
server.register(sessionRoute);
server.register(roomRoute);

const startServer = async () => {
  try {
    await httpAdapter.authorize();
  } catch (error) {
    logger.error(`Error while trying to authorize in http-adapter service: ${error.stack}`);
  }

  server.listen(PORT, '0.0.0.0', () => {
    logger.info(`Server started at http://0.0.0.0:${PORT}`);
  });
};

export {
  startServer,
};
