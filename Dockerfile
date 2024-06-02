FROM httpd:latest

# Optionally, you can copy your HTML/CSS/JS files to the container
COPY . /usr/local/apache2/htdocs/

EXPOSE 80

CMD ["apache2-foreground"]
