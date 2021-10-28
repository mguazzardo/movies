FROM node:10.13-alpine

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN apk --no-cache add curl

RUN npm cache verify && npm install

COPY . .

EXPOSE 3000

CMD npm start
