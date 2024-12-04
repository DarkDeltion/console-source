    FROM php:8.2-apache

    # Update and install required extensions
    RUN apt-get update && \
        docker-php-ext-install pdo_mysql mysqli

    # Enable Apache rewrite module
    RUN cp /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/
