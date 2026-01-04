import { IsEmail, IsNotEmpty, IsString, MinLength } from "class-validator";

export class LoginUser {
    @IsEmail({}, { message: "Некорректный email" })
    @IsNotEmpty()
    email: string;

    @IsString()
    @IsNotEmpty()
    @MinLength(6, { message: "Пароль слишком короткий" })
    password: string;
}
