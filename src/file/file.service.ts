import { Injectable } from '@nestjs/common';

@Injectable()
export class FileService {
  uploadFile(file: Express.Multer.File) {
    if (!file) {
      throw new Error('File not found');
    }

    console.log('File uploaded:', file);
    return {
      message: 'File uploaded successfully',
      filePath: file.path,
    };
  }
}
