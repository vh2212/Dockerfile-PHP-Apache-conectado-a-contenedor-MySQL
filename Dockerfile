FROM php:7.0-apache
LABEL Name="API"
COPY . /var/www/html
WORKDIR /
RUN apt-get update
RUN apt-get install nano
RUN docker-php-ext-install pdo pdo_mysql pdo_pgsql
EXPOSE 80