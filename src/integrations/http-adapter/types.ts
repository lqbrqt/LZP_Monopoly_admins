import { RequestInfo, RequestInit, Response } from 'node-fetch';

export interface HTTPAdapterCredentials {
    login: string;
    password: string;
}

export type FetchClient = (url: RequestInfo, init?: RequestInit) => Promise<Response>

// eslint-disable-next-line no-shadow
export enum RequestType {
    POST='POST',
    GET='GET',
    DELETE='DELETE',
    PUT='PUT',
    UPDATE='UPDATE',
}
