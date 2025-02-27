FROM php:8.4.4-cli-alpine

COPY --from=ghcr.io/mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN set -xe \
 && install-php-extensions pdo_sqlsrv opcache zip intl \
 && rm /usr/local/bin/install-php-extensions

COPY config/php.ini /usr/local/etc/php/php.ini

HEALTHCHECK NONE

ENTRYPOINT ["/usr/local/bin/php"]
