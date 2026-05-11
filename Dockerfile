FROM node:20-alpine

WORKDIR /app

COPY frontend ./frontend

WORKDIR /app/frontend

RUN apk add --no-cache bash git

RUN npm install -g pnpm

RUN pnpm install

EXPOSE 3000

CMD ["pnpm", "start"]