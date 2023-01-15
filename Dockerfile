FROM php:8.1-fpm-alpine

WORKDIR /var/www/

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apk update && apk upgrade

RUN apk add bash

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer