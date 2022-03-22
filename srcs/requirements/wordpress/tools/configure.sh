#!/bin/bash

sed -i "s|listen = /run/php/php7.3-fpm.sock|listen = 9000|g" /etc/php/7.3/fpm/pool.d/www.conf
sed -i "s|skip-networking|# skip-networking|g" /etc/php/7.3/fpm/pool.d/www.conf

# PIDファイル
mkdir -p /run/php

echo "start php-fpm7.3"

exec php-fpm7.3 --nodaemonize
