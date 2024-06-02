FROM httpd:latest

# Copy all files from current directory to Apache document root
COPY . /usr/local/apache2/htdocs/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache HTTP Server in the foreground
CMD ["httpd-foreground"]
