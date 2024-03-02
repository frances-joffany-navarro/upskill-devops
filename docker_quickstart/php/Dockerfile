# Add PHP-FPM base image
FROM php:8.2-fpm

# Install extentions
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/restaurant-css-framework

# Use the default development configuration
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
 
