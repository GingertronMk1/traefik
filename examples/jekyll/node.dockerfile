FROM node:16

WORKDIR /src
COPY . .
RUN npm ci