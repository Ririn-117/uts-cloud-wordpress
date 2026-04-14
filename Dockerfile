FROM wordpress:php8.1-apache

RUN rm -f /etc/apache2/mods-enabled/mpm_*.load

RUN a2enmod mpm_prefork

CMD ["apache2-foreground"]
