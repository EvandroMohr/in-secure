FROM php:7.4-apache

RUN docker-php-ext-install mysqli pdo_mysql

RUN apt-get update \
    && apt-get install -y libzip-dev \
    && apt-get install -y zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip



FROM vulnerables/web-dvwa 

RUN sed -i 's+allow_url_include = Off+allow_url_include = On+g' /etc/php/7.0/apache2/php.ini
