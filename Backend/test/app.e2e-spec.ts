import { Test, TestingModule } from '@nestjs/testing';
import { INestApplication } from '@nestjs/common';
import * as request from 'supertest';
import { AppModule } from './../src/app.module';

describe('AppController (e2e)', () => {
  let app: INestApplication;

  beforeAll(async () => {
    const moduleFixture: TestingModule = await Test.createTestingModule({
      imports: [AppModule],
    }).compile();

    app = moduleFixture.createNestApplication();
    await app.init();
  });

  // Fecha a aplicação e limpa conexões pendentes do banco
  afterAll(async () => {
    await app.close();
  });

  // Teste atualizado para refletir o seu AppController real
  it('/health (GET)', () => {
    return request(app.getHttpServer())
      .get('/health') // Alterado de '/' para '/health'
      .expect(200)
      .expect({ status: 'ok' }); // Alterado para o formato JSON correto
  });
});
