FROM wordpress:php8.1-apache

# paksa hanya 1 MPM aktif
RUN rm -f /etc/apache2/mods-enabled/mpm_event.load \
    && rm -f /etc/apache2/mods-enabled/mpm_worker.load \
    && a2enmod mpm_prefork

EXPOSE 80
