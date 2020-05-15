FROM node:13.5-alpine
RUN apk update
WORKDIR /home/node/app
COPY package.json ./
RUN yarn install
COPY . .
EXPOSE 3000
CMD [ "yarn", "start"]