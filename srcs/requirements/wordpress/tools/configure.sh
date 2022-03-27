#!/bin/bash

# wordpress
mkdir -p /var/www/html
wp core download --locale=ja --allow-root --path=/var/www/html/wordpress

wp config create \
    --force \
    --dbname="${DB_NAME}" \
    --dbuser="${DB_USER}" \
    --dbpass="${DB_PASSWORD}" \
    --dbhost="${DB_HOST}" \
    --locale=ja \
    --allow-root \
    --path=/var/www/html/wordpress

chown -R www-data:www-data /var/www/html/* \
    && find /var/www/html/ -type d -exec chmod 755 {} + \
    && find /var/www/html/ -type f -exec chmod 644 {} +

# php-fpm

sed -i "s|listen = /run/php/php7.3-fpm.sock|listen = 9000|g" /etc/php/7.3/fpm/pool.d/www.conf
sed -i "s|skip-networking|# skip-networking|g" /etc/php/7.3/fpm/pool.d/www.conf

# PIDファイル
mkdir -p /run/php

echo "start php-fpm7.3"

exec php-fpm7.3 --nodaemonize
