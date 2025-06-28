import { INodeType, INodeTypeDescription } from 'n8n-workflow';

export class ElevenLabs implements INodeType {
  description: INodeTypeDescription = {
    displayName: 'ElevenLabs',
    name: 'elevenLabs',
    group: ['transform'],
    version: 1,
    description: 'Interact with ElevenLabs API',
    defaults: {
      name: 'ElevenLabs',
    },
    inputs: ['main'],
    outputs: ['main'],
    properties: [],
  };
}