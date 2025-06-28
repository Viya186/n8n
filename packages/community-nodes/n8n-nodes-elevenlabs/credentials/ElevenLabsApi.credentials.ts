import { ICredentialType, INodeProperties } from 'n8n-workflow';

export class ElevenLabsApi implements ICredentialType {
  name = 'elevenLabsApi';
  displayName = 'ElevenLabs API';
  properties: INodeProperties[] = [
    {
      displayName: 'API Key',
      name: 'apiKey',
      type: 'string',
      default: '',
    },
  ];
}
