FROM wordpress:latest
RUN a2dismod mpm_event && a2enmod mpm_prefork
