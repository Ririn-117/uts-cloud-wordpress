FROM wordpress:php8.1-cli

WORKDIR /var/www/html

# copy wordpress (sudah ada di image)
EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www/html"]
