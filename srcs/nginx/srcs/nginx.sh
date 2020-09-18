#!/bin/sh

apk update
apk add nginx openrc openssl --no-cache
adduser -D -g 'www' www
mkdir /www
chown -R www:www /var/lib/nginx
chown -R www:www /www
mv /tmp/nginx.conf /etc/nginx/
mv /tmp/index.html /www/
mkdir -p /run/nginx
yes "" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/localhost.key -out /etc/ssl/certs/localhost.crt
openrc
touch /run/openrc/softlevel
rc-service nginx start