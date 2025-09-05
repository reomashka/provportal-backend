import { MiddlewareConsumer, Module, NestModule } from "@nestjs/common";
import { TransportModule } from "./transport/transport.module";
import { OnlineModule } from "./online/online.module";
import { JobsModule } from "./jobs/jobs.module";
import { ConfigModule } from "@nestjs/config";
import { IS_DEV_ENV } from "./libs/common/utils/is-dev.util";
import { AuthModule } from "./auth/auth.module";
import { UserModule } from "./user/user.module";
import { PrismaModule } from "./prisma/prisma.module";
import { FileModule } from "./file/file.module";

@Module({
  imports: [
    TransportModule,
    OnlineModule,
    JobsModule,
    ConfigModule.forRoot({
      ignoreEnvFile: !IS_DEV_ENV,
      isGlobal: true,
    }),
    AuthModule,
    UserModule,
    PrismaModule,
    FileModule,
  ],
  controllers: [],
  providers: [],
})
export class AppModule {}
