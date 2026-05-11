FROM node:20-alpine

WORKDIR /app

COPY frontend ./frontend

WORKDIR /app/frontend

RUN apk add --no-cache bash git

RUN yarn install

RUN yarn build || true

RUN npm install -g serve

EXPOSE 3000

CMD ["serve", "-s", "public", "-l", "3000"]