FROM node:16-alpine

WORKDIR /src

COPY . /src

RUN npm ci
