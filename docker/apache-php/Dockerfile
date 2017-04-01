FROM php:7.1.3-apache

RUN apt-get update &&\
    apt-get install -y php5-mysql &&\
    apt-get install -y php5-gd &&\
    apt-get install -y libpng12-dev

RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install gd