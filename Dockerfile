FROM node:20-alpine

WORKDIR /app

COPY frontend ./frontend

WORKDIR /app/frontend

RUN apk add --no-cache bash git

RUN yarn install

EXPOSE 3000

CMD ["yarn", "start", "--host", "0.0.0.0"]