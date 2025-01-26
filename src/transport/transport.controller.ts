import { Controller, Get, Query } from "@nestjs/common";
import { TransportService } from "./transport.service";

@Controller("transport")
export class TransportController {
  constructor(private readonly transportService: TransportService) {}

  @Get()
  async getAll(
    @Query("order") order: "asc" | "desc",
    @Query("class") classType: "passenger" | "moto",
  ) {
    return this.transportService.findAll({ order, class: classType });
  }
}
