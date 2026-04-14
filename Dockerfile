FROM wordpress:php8.1-apache

RUN rm -rf /etc/apache2/mods-enabled/mpm_*

RUN a2enmod mpm_prefork

CMD ["apache2-foreground"]
