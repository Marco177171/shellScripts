#!/bin/sh

mkdir -p /run/mysqld
chown -R mysql:mysql /run/mysqld

if [ ! -d "/var/lib/mysql/mysql" ]; then
    mariadb-install-db --user=mysql --datadir=/var/lib/mysql
fi

mariadbd-safe --datadir=/var/lib/mysql &
sleep 5

mariadb -u root -e "CREATE DATABASE IF NOT EXISTS $WORDPRESS_DB_NAME"
sleep 10

mariadb -u root -e "
CREATE USER IF NOT EXISTS '$WORDPRESS_DB_USER'@'$WORDPRESS_DB_HOST' IDENTIFIED BY '$WORDPRESS_DB_PASSWORD';
GRANT ALL PRIVILEGES ON $WORDPRESS_DB_NAME.* TO '$WORDPRESS_DB_USER'@'$WORDPRESS_DB_HOST';
FLUSH PRIVILEGES;"

lighttpd -D -f lighttpd.conf