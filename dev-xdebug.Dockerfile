FROM paliari/apache-php7-oci8:1.0.0-dev

RUN pecl install xdebug \
  && docker-php-ext-enable xdebug \
  && pecl clear-cache
