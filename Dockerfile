# force fix total MPM
FROM wordpress:php8.1-apache

# disable semua MPM yang bentrok
RUN a2dismod mpm_event || true \
 && a2dismod mpm_worker || true \
 && a2dismod mpm_prefork || true

# aktifkan hanya 1 MPM
RUN a2enmod mpm_prefork

# hapus kemungkinan config duplikat
RUN rm -f /etc/apache2/mods-enabled/mpm_event.load \
           /etc/apache2/mods-enabled/mpm_worker.load

CMD ["apache2-foreground"]
