FROM node:22-alpine

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn

COPY . .

RUN yarn build

EXPOSE 3000

CMD ["sh", "-c", "npx drizzle-kit migrate && node dist/src/main"]
