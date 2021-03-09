FROM alpine:3.11
EXPOSE 3306
RUN apk update && apk upgrade
RUN apk add openrc
RUN apk add --no-cache mariadb mariadb-common mariadb-client
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
# RUN rc-update add mariadb default
# RUN openrc default
# RUN /etc/init.d/mariadb setup

# mkdir -p /run/openrc
# touch /run/openrc/softlevel
# openrc reboot

RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

RUN mkdir -p /run/openrc
RUN openrc default
#RUN chown -R mysql: /var/lib/mysql

COPY srcs/mysql/mariadb-server.cnf etc/my.cnf.d/
COPY srcs/mysql/wordpressdb.sql /
COPY srcs/mysql/phpmyadmin.sql /
COPY srcs/mysql/healthy.sh /
COPY srcs/mysql/run.sh /
ENTRYPOINT sh run.sh
