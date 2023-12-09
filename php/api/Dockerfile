FROM dunglas/frankenphp:1-php8.3-alpine

RUN set -xe && install-php-extensions opcache sockets pcntl pdo_pgsql decimal gd zip

COPY config/php.ini /usr/local/etc/php/php.ini
COPY config/Caddyfile /etc/caddy/Caddyfile

HEALTHCHECK NONE
#HEALTHCHECK CMD curl -f http://127.0.0.1/health-check || exit 1

ENTRYPOINT ["/usr/local/bin/frankenphp"]
CMD ["run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]