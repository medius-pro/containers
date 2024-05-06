#!/usr/bin/env sh
set -e

docker build --no-cache --pull --platform "linux/arm64" -t medius/php:erp .
