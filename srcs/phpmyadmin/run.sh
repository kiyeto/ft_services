#!bin/bash
mkdir /www/phpMyAdmin/tmp
chmod 777 /www/phpMyAdmin/tmp
mkdir -p /run/nginx
openrc default
nginx -g 'daemon off;';
