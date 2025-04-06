FROM dunglas/frankenphp:1.5.0-php8.4.5

RUN install-php-extensions opcache pdo_pgsql gd decimal bcmath intl zip

COPY config/php.ini /usr/local/etc/php/php.ini
COPY config/Caddyfile /config/Caddyfile

HEALTHCHECK NONE

ENTRYPOINT ["/usr/local/bin/frankenphp"]
CMD ["run", "--config", "/config/Caddyfile", "--adapter", "caddyfile"]

EXPOSE 8080
