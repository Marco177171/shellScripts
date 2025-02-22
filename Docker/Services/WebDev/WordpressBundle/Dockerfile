FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add --no-cache openrc mariadb mariadb-client lighttpd php-mysqli php php-fpm php-cli php-curl php-xml php-json php-zip php-mbstring php-gd php-intl php-cgi wget

# WORDPRESS
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz

RUN mkdir -p /var/www/html
RUN mv wordpress /var/www/html
COPY wp-config.php /var/www/html/wordpress

# RUN chmod -R 755 /var/www/html/wordpress
# RUN chown -R lighttpd:lighttpd /var/www/html/wordpress
RUN rm -rf latest.tar.gz wordpress

COPY lighttpd.conf .
COPY start_mariadb.sh .

CMD [ "sh", "start_mariadb.sh" ]