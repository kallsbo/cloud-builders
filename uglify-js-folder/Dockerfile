ARG NODE_VERSION=latest
FROM node:${NODE_VERSION}

RUN npm install uglifyjs-folder -g

ENTRYPOINT ["uglifyjs-folder"]
