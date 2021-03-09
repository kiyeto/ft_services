FROM alpine:3.11
EXPOSE 5000
RUN apk update && apk upgrade
RUN apk add --no-cache nginx wget
RUN apk add php7 php7-bcmath php7-ctype php7-curl php7-fpm php7-gd php7-iconv php7-intl php7-json php7-mbstring php7-mcrypt \
	php7-mysqlnd php7-opcache php7-mysqli php7-openssl php7-pdo php7-pdo_mysql php7-pdo_pgsql php7-pdo_sqlite php7-phar	php7-posix php7-session php7-soap php7-xml php7-zip
RUN apk add openrc

RUN wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
RUN tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
RUN rm phpMyAdmin-5.0.2-all-languages.tar.gz
RUN mv phpMyAdmin-5.0.2-all-languages phpMyAdmin

RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
COPY srcs/phpmyadmin/default.conf /etc/nginx/conf.d
RUN mv phpMyAdmin /www
COPY srcs/phpmyadmin/config.inc.php /www/phpMyAdmin

RUN rc-update add php-fpm7 default

COPY srcs/phpmyadmin/healthy.sh /
COPY srcs/phpmyadmin/run.sh /
ENTRYPOINT sh run.sh