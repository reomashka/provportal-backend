import { Module } from "@nestjs/common";
import { TransportService } from "./transport.service";
import { TransportController } from "./transport.controller";
import { DatabaseModule } from "@/database/database.module";

@Module({
    imports: [DatabaseModule],
    controllers: [TransportController],
    providers: [TransportService],
})
export class TransportModule {}
