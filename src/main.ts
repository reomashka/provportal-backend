import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.setGlobalPrefix('api');

  app.enableCors({
    origin: '*',
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
    credentials: true,
  });

  const document = SwaggerModule.createDocument(
    app,
    new DocumentBuilder()
      .setTitle('ProvPortal API')
      .setDescription('ProvPortal API.')
      .setVersion('1.0.0')
      .build()
  );

  // Настройка пути для Swagger UI
  SwaggerModule.setup('api', app, document);

  await app.listen(4444, '0.0.0.0');
}
bootstrap();
