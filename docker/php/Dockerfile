FROM php:7.2.0-fpm-alpine

# git is for composer
# bcmath is for phpunit
# zip is for composer

RUN apk add --no-cache --virtual '.lightster-phpize-deps' \
        $PHPIZE_DEPS \
    && apk add --no-cache \
        git \
        postgresql-dev \
        zlib-dev \
    && docker-php-ext-install \
        bcmath \
        pgsql \
        zip \
    && apk del --no-cache .lightster-phpize-deps

RUN curl -sS https://getcomposer.org/installer >composer-setup.php \
    && php composer-setup.php --quiet \
        --install-dir=/usr/local/bin --filename=composer \
    && rm composer-setup.php

WORKDIR /opt/pickem-releases
