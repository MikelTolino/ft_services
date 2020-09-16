#!/bin/sh

apk update && apk add nginx openrc --no-cache
adduser -D -g 'www' www
mkdir /www && chown -R www:www /var/lib/nginx
chown -R www:www /www
mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
mv /tmp/nginx.conf /etc/nginx/
mv /tmp/index.html /www/
openrc
touch /run/openrc/softlevel
