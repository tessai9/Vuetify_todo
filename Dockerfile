FROM node:13.5.0-alpine

ENV APP /app

RUN apk upgrade \
    && apk update \
    && apk add yarn \
    && mkdir app

WORKDIR /app

COPY package.json $APP/package.json
COPY yarn.lock $APP/yarn.lock

RUN yarn install

COPY src $APP/src
COPY public $APP/public
COPY babel.config.js $APP/babel.config.js
COPY README.md $APP/README.md
COPY .gitignore $APP/.gitignore
COPY vue.config.js $APP/vue.config.js

EXPOSE 8080
