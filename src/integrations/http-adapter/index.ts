import { SERVICE_AUTH_URL, SERVICE_LOGIN, SERVICE_PASSWORD } from '../../config';
import HTTPAdapter from './http-adapter';

const adapter = new HTTPAdapter({
  login: SERVICE_LOGIN,
  password: SERVICE_PASSWORD,
}, SERVICE_AUTH_URL);

export default adapter;
