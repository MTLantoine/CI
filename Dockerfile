FROM node:12

COPY ./src ./
COPY yarn.lock ./
COPY package.json ./

RUN yarn global add node-gyp && yarn install
RUN yarn start