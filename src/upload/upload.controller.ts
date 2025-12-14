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
import { rename } from "fs/promises";

@Controller("upload")
export class UploadController {
    @Post()
    @UseInterceptors(
        FileInterceptor("file", {
            storage: diskStorage({
                destination: "./uploads/news",
                filename: (_, file, cb) => {
                    cb(null, Date.now() + extname(file.originalname));
                },
            }),
        })
    )
    async uploadFile(
        @UploadedFile() file: Express.Multer.File,
        @Body("title") title: string
    ) {
        if (!file) {
            return { success: false };
        }

        const newPath = `./uploads/news/${title}.jpg`;
        await rename(file.path, newPath);

        return {
            success: true,
            url: `/uploads/news/${title}`,
            title,
        };
    }
}
