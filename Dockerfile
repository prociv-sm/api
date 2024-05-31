FROM node:20.14.0-slim

ENV TZ Europe/Rome

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn --frozen-lockfile

COPY . .

CMD [ "yarn", "start" ]
