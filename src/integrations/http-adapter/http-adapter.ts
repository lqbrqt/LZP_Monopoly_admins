import fetch from 'node-fetch';
import { HTTPAdapterCredentials, RequestType } from './types';

export default class HTTPAdapter {
  public constructor (credentials: HTTPAdapterCredentials, authURL: string) {
    this.credentials = credentials;
    this.authURL = authURL;
  }

  public async authorize () {
    const response = await this.sendRequest(this.authURL, RequestType.POST, this.credentials) as any;

    this.token = response?.token;
  }

  public async sendRequest (url: string, type: RequestType, body: any) {
    const response = await fetch(
      url,
      {
        method: type as any,
        headers: {
          'Content-Type': 'application/json',
          authorization: this.token,
        },
        body: JSON.stringify(body),
      },
    );

    return response.json();
  }

    private token: string;
    private authURL: string;
    private credentials: HTTPAdapterCredentials;
}
