import { NestFactory } from "@nestjs/core";
import { AppModule } from "./app.module";
import { DocumentBuilder, SwaggerModule } from "@nestjs/swagger";

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  // Создание документа Swagger
  const document = SwaggerModule.createDocument(
    app,
    new DocumentBuilder()
      .setTitle("ProvPortal API")
      .setDescription("ProvPortal API.")
      .setVersion("1.0.0")
      .build(),
  );

  // Настройка пути для Swagger UI
  SwaggerModule.setup("api", app, document);

  // Запуск приложения и ожидание его завершения
  await app.listen(process.env.PORT ?? 4444); // Здесь используется await
}
bootstrap();
