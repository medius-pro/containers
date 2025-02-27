FROM dunglas/frankenphp:1.4.4-php8.4.4

RUN set -xe \
 && install-php-extensions opcache pdo_pgsql gd decimal bcmath intl zip \
 && setcap -r /usr/local/bin/frankenphp

COPY config/php.ini /usr/local/etc/php/php.ini
COPY config/Caddyfile /config/Caddyfile

HEALTHCHECK NONE

ENTRYPOINT ["/usr/local/bin/frankenphp"]
CMD ["run", "--config", "/config/Caddyfile", "--adapter", "caddyfile"]

EXPOSE 8443
