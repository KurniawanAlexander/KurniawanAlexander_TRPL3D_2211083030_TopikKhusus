FROM node:alpine

WORKDIR /app

COPY *.json .

RUN npm install

COPY . .

ENTRYPOINT [ "node", "index.js" ]

EXPOSE 3000