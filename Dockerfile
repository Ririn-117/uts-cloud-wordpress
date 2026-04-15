FROM wordpress:6.4-php8.1-apache

# fix error MPM (WAJIB biar gak crash)
RUN a2dismod mpm_event || true \
 && a2dismod mpm_worker || true \
 && a2enmod mpm_prefork

EXPOSE 80
