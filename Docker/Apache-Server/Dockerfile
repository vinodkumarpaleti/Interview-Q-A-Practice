# Use the official Apache image as the base image
FROM httpd:latest
# (Optional) Copy your custom configuration file to the Apache configuration directory
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
# (Optional) Copy your web content to the default web directory
COPY ./my-web-content /usr/local/apache2/htdocs/
# Expose port 80 to allow external connections
EXPOSE 80

