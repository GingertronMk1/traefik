FROM php:8.0.9-fpm-alpine

WORKDIR /src

RUN apk add --no-cache git libzip-dev composer

RUN docker-php-ext-install mysqli pdo pdo_mysql zip

COPY . /src

RUN PATH=$PATH

RUN composer install
