FROM node:10.13-alpine

WORKDIR /app

COPY ["package.json", "./"]

RUN apk --no-cache add curl

RUN npm cache verify && npm cache clean --force && npm install --no-package-lock

COPY . .

EXPOSE 3000

CMD npm start
