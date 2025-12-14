import { AnnouncementType } from "@/database/schema";
import { IsNotEmpty, IsString } from "class-validator";
export type AnnouncementTypeEnum = (typeof AnnouncementType.enumValues)[number];

export class CreateAnnouncement {
    @IsString({ message: "title должно быть строкой." })
    @IsNotEmpty({ message: "title обязательно для заполнения." })
    title: string;

    @IsString({ message: "description должен быть строкой." })
    @IsNotEmpty({ message: "description обязателен для заполнения." })
    description: string;

    @IsString({ message: "type должен быть строкой." })
    @IsNotEmpty({ message: "type обязателен для заполнения." })
    type: AnnouncementTypeEnum;

    @IsString({ message: "date должен быть строкой." })
    @IsNotEmpty({ message: "date обязателен для заполнения." })
    date: string;
}
