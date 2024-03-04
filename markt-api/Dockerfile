FROM php:8.2-fpm-alpine

LABEL mantainer = "John Edisson Ortiz"
LABEL email = "me@johndev.co"

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions redis xdebug sockets bcmath pdo pdo_mysql intl

COPY --from=composer /usr/bin/composer /usr/bin/composer
ENV COMPOSER_ALLOW_SUPERUSER=1

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

WORKDIR /var/www/html/

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh", "php-fpm"]