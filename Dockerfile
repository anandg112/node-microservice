FROM node:alpine

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install --only=production

COPY . .

ENV VIDEOS_PATH=/videos

EXPOSE 3000

CMD npm start