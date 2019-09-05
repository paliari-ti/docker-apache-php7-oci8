FROM php:7.3-apache

LABEL maintainer="Daniel Fernando Lourusso <dflourusso@gmail.com.br>"

ADD oracle/instantclient-basic-linux.x64-12.2.0.1.0.tar.gz /usr/local
ADD oracle/instantclient-sdk-linux.x64-12.2.0.1.0.tar.gz /usr/local
ADD oracle/instantclient-sqlplus-linux.x64-12.2.0.1.0.tar.gz /usr/local

RUN apt-get update && apt-get -y install wget bsdtar libaio1 curl git zlib1g-dev libzip-dev \
  && ln -s /usr/local/instantclient_12_2 /usr/local/instantclient \
  && ln -s /usr/local/instantclient/libclntsh.so.* /usr/local/instantclient/libclntsh.so \
  && ln -s /usr/local/instantclient/lib* /usr/lib \
  && ln -s /usr/local/instantclient/sqlplus /usr/bin/sqlplus \
  && docker-php-ext-configure oci8 --with-oci8=instantclient,/usr/local/instantclient \
  && docker-php-ext-install oci8 \
  && docker-php-ext-install pdo_mysql exif opcache \
  && apt-get install -y libicu-dev libaio-dev libxml2-dev libjpeg-dev libpng-dev libfreetype6-dev \
  && docker-php-ext-install intl soap dom \
  && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install gd \
  && docker-php-ext-install zip \
  && apt-get install -y imagemagick \
  && apt-get purge -y --auto-remove \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/* \
  && mkdir -p /etc/apache2/ssl \
  && mkdir -p /var/www/html/public \
  && a2enmod ssl headers rewrite

WORKDIR /var/www/html

COPY apache/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY apache/charset.conf /etc/apache2/conf-available/charset.conf
COPY php/opcache-recommended.ini /usr/local/etc/php/conf.d/opcache-recommended.ini
COPY php/timezone.ini /usr/local/etc/php/conf.d/timezone.ini
COPY src/index.php /var/www/html/public/index.php
COPY php/vars-pro.ini /usr/local/etc/php/conf.d/vars.ini

RUN cp -f "/usr/local/etc/php/php.ini-production" /usr/local/etc/php/php.ini
