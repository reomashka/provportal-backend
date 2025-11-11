import {
    Body,
    Controller,
    Post,
    UploadedFile,
    UseInterceptors,
} from "@nestjs/common";
import { FileInterceptor } from "@nestjs/platform-express";
import { diskStorage } from "multer";
import { extname } from "path";
import * as fs from "fs";

@Controller("upload")
export class UploadController {
    @Post()
    @Post()
    @UseInterceptors(
        FileInterceptor("file", {
            storage: diskStorage({
                destination: "./uploads/news",
                filename: (req, file, cb) => {
                    const tempName =
                        Date.now() + "-" + Math.round(Math.random() * 1e9);
                    cb(null, `${tempName}${extname(file.originalname)}`);
                },
            }),
        })
    )
    async uploadFile(
        @UploadedFile() file: Express.Multer.File,
        @Body("title") title: string
    ) {
        try {
            const oldPath = `./uploads/news/${file.filename}`;
            const newFilename = `${title}${extname(file.originalname)}`;
            const newPath = `./uploads/news/${newFilename}`;

            fs.renameSync(oldPath, newPath);

            return {
                success: true,
                url: `/uploads/news/${newFilename}`,
                title,
            };
        } catch (err) {
            console.error("Ошибка при переименовании:", err);
            return {
                success: false,
                message: "Ошибка при сохранении файла",
            };
        }
    }
}
