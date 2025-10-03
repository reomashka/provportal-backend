import { Injectable } from "@nestjs/common";
import axios from "axios";

@Injectable()
export class OnlineService {
  private readonly url = "https://waste.fantastic-game.ru/tbru/report.txt";

  async getServers() {
    try {
      const response = await axios.get(this.url);
      const data = response.data;

      // Разбираем строки
      const lines = data.split("\n").filter((line) => line.trim() !== "");
      if (lines.length === 0) return { error: "Empty file" };

      const serversData = lines[0].split(" ").slice(1); // Пропускаем время
      const result = serversData
        .map((server) => {
          const match = server.match(/^(\d)(\d)(\d)(\d{3,4})\/(\d{4})$/);
          if (!match) return null;

          const [, S, , O, X, slots] = match;
          return {
            server: Number(S),
            online: X === "0000" ? 0 : Number(X.replace(/^0+/, "")),
            slots: Number(slots),
          };
        })
        .filter(Boolean);

      return result;
    } catch (error) {
      return { error: "Failed to fetch data", details: error.message };
    }
  }
}
