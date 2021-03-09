#!bin/bash
# echo "daemon off;" >> /etc/nginx/nginx.conf
# rc-service nginx start
mkdir -p /run/nginx
openrc default
# to access your_username@host_ip_
/etc/init.d/sshd start
nginx -g 'daemon off;';