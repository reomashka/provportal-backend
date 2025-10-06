import { UpdateType } from "@prisma/client";
import {
    IsEmail,
    IsNotEmpty,
    IsString,
    MinLength,
    Validate,
} from "class-validator";

export class CreateAnouncement {
    @IsString({ message: "title должно быть строкой." })
    @IsNotEmpty({ message: "title обязательно для заполнения." })
    title: string;

    @IsString({ message: "description должен быть строкой." })
    @IsNotEmpty({ message: "description обязателен для заполнения." })
    description: string;

    @IsString({ message: "type должен быть строкой." })
    @IsNotEmpty({ message: "type обязателен для заполнения." })
    type: UpdateType;

    @IsString({ message: "date должен быть строкой." })
    @IsNotEmpty({ message: "date обязателен для заполнения." })
    date: string;
}
