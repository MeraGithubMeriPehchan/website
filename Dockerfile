FROM hshar/webapp

COPY . /var/www/html

WORKDIR /var/www/html

CMD ["apache2-foreground"]
