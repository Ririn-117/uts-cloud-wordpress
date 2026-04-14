FROM wordpress:php8.1-fpm

RUN apt-get update && apt-get install -y nginx

COPY default.conf /etc/nginx/sites-available/default

EXPOSE 8080

CMD service nginx start && php-fpm
