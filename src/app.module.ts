import { MiddlewareConsumer, Module, NestModule } from '@nestjs/common';
import { TransportModule } from './transport/transport.module';
import { OnlineModule } from './online/online.module';
import { UsersModule } from './users/users.module';
import { LoggerMiddleware } from './conception/middlware';
import { JobsModule } from './jobs/jobs.module';

@Module({
  imports: [TransportModule, OnlineModule, UsersModule, JobsModule],
  controllers: [],
  providers: [],
})
export class AppModule implements NestModule {
  configure(consumer: MiddlewareConsumer) {
    consumer.apply(LoggerMiddleware).forRoutes('online');
  }
}
