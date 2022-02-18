FROM node:16.13-alpine

WORKDIR /app

RUN apk add --no-cache tzdata && rm -rf /tmp/*

COPY package*.json ./

RUN npm install

COPY . .

CMD npm run deploy ; npm start
