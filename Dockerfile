FROM node:22-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn

COPY . .

RUN yarn prisma generate

RUN yarn build

EXPOSE 3000

CMD yarn prisma migrate deploy && node dist/main