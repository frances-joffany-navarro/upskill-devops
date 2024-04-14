# Add PHP-FPM base image
FROM php:8.2-fpm

# Install extentions
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/restaurant-css-framework

ENV mysql_server_name=mysql
ENV mysql_server_passwd=root

# Use the default development configuration
RUN cp "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

# Copy the additional configuration to conf.d
COPY php.conf.ini $PHP_INI_DIR/conf.d/
