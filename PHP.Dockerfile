FROM php:8.0-apache
WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql
RUN pecl install xdebug && docker-php-ext-enable xdebug

COPY index.php index.php
COPY src/ src
EXPOSE 80