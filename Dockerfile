FROM node:22

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

COPY prisma ./prisma

RUN npx prisma generate

RUN npm run build

CMD ["npm", "run", "start:prod"]
