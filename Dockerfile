FROM php:8.1-fpm

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libicu-dev

RUN apt-get update && apt-get install -y libpq-dev
RUN docker-php-ext-install pdo pdo_pgsql intl

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html
