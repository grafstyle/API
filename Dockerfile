FROM node:14-alpine

RUN mkdir -p /api

WORKDIR  /api

COPY package.json .

COPY package-lock.json .

RUN npm install --force

EXPOSE 3500

COPY . /api

CMD [ "npm", "run", "serve" ]