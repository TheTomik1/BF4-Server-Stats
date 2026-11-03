FROM php:8.5.12-apache

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j"$(nproc)" gd mysqli \
    && rm -rf /var/lib/apt/lists/*

COPY docker/apache-app.conf /etc/apache2/conf-available/bf4-app.conf
COPY docker/php-production.ini /usr/local/etc/php/conf.d/zz-bf4-production.ini
COPY index.php favicon.ico /var/www/html/
COPY common/ /var/www/html/common/
COPY config/.htaccess /var/www/html/config/.htaccess

RUN a2enmod rewrite remoteip \
    && a2enconf bf4-app \
    && mkdir -p /var/www/html/common/server-banner/cache \
    && chown -R www-data:www-data /var/www/html/common/server-banner/cache