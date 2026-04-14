FROM wordpress:php8.1-apache

RUN a2dismod mpm_event || true \
 && a2dismod mpm_worker || true \
 && a2enmod mpm_prefork

CMD ["apache2-foreground"]
