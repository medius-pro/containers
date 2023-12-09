FROM dunglas/frankenphp:1.0-php8.3-alpine

RUN set -xe && php-extension-installer opcache sockets pcntl pdo_pgsql decimal gd zip

COPY config/php.ini /usr/local/etc/php/php.ini
COPY config/Caddyfile /etc/caddy/Caddyfile

ENTRYPOINT ["/usr/local/bin/frankenphp"]
CMD ["php-server"]
