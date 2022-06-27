FROM node:12.14.0-alpine3.11

RUN apk add --no-cache bash

RUN npm install -f @nestjs/cli

RUN ["chmod", "+x", ".docker/entrypoint.sh"]

USER node

WORKDIR /home/node/app
