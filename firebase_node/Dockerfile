ARG NODE_VERSION=current-alpine3.15
FROM node:${NODE_VERSION}

RUN apk add openjdk11

RUN npm install -g firebase-tools

ENTRYPOINT ["firebase"]
