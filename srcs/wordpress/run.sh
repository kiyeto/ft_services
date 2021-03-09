#!bin/bash
mkdir -p /run/nginx
openrc default
nginx -g 'daemon off;';
