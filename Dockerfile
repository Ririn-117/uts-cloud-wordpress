FROM php:8.1-cli

WORKDIR /var/www/html

# install tools
RUN apt-get update && apt-get install -y wget unzip

# download wordpress
RUN wget https://wordpress.org/latest.zip \
 && unzip latest.zip \
 && mv wordpress/* . \
 && rm -rf wordpress latest.zip

EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www/html"]
