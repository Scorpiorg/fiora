FROM node:14

WORKDIR /usr/app/fiora

COPY packages ./packages
COPY package.json tsconfig.json yarn.lock lerna.json ./

ENV Administrator=""
ENV JwtSecret=""
ENV Database=""
ENV RedisPass=""

EXPOSE 9200

RUN yarn install

RUN yarn build:web

CMD yarn start
