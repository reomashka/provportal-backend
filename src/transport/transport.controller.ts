import { Controller, Get, Param, ParseIntPipe, Query } from "@nestjs/common";
import { TransportQuery, TransportService } from "./transport.service";

@Controller("transport")
export class TransportController {
    constructor(private readonly transportService: TransportService) {}

    @Get("")
    async getAllTransport(@Query() query: TransportQuery) {
        return this.transportService.getAll(query);
    }

    @Get(":id")
    async getCurrentTransport(@Param("id", ParseIntPipe) id: number) {
        return this.transportService.getCurrentTransport(id);
    }

    @Get("names")
    async getNamesTransport() {
        return this.transportService.getNamesTransport();
    }
}
