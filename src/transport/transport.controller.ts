import {
  Controller,
  Get,
  Param,
  ParseIntPipe,
  Query,
  Request,
} from "@nestjs/common";
import { TransportService } from "./transport.service";
import { TransportQuery } from "./transport.service";

@Controller("transport")
export class TransportController {
  constructor(private readonly transportService: TransportService) {}

  @Get("get-all")
  async getAllTransport(@Query() query: TransportQuery) {
    return this.transportService.getAll(query);
  }

  @Get("get-one/:id")
  async getCurrentTransport(@Param("id", ParseIntPipe) id: number) {
    return this.transportService.getCurrentTransport(id);
  }
}
