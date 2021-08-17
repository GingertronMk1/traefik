FROM php:8.0.9-fpm

WORKDIR /src
RUN apt update && apt install -y \
    git \
    build-essential \
    openssl \
    libssl-dev \
    nodejs \
    npm \
    libzip-dev \
    zip
RUN npm install -g n && n lts

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install mysqli pdo pdo_mysql zip

COPY . /src

RUN PATH=$PATH

RUN composer install && npm ci

