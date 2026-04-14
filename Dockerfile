FROM wordpress:php8.1-apache

# matikan semua MPM dulu (biar bersih)
RUN a2dismod mpm_event || true \
 && a2dismod mpm_worker || true \
 && a2enmod mpm_prefork

# pastikan apache jalan normal
CMD ["apache2-foreground"]
