FROM alpine:3.11
EXPOSE 5050
RUN apk update && apk upgrade
RUN apk add --no-cache nginx wget
RUN apk add php7 php7-bcmath php7-ctype php7-curl php7-fpm php7-gd php7-iconv php7-intl php7-json php7-mbstring php7-mcrypt \
	php7-mysqlnd php7-opcache php7-mysqli php7-openssl php7-pdo php7-pdo_mysql php7-pdo_pgsql php7-pdo_sqlite php7-phar	php7-posix php7-session php7-soap php7-xml php7-zip
RUN apk add openrc

RUN wget http://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN rm latest.tar.gz

RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
RUN mv wordpress /www/

COPY srcs/wordpress/default.conf /etc/nginx/conf.d
COPY srcs/wordpress/wp-config.php /www/wordpress

RUN rc-update add php-fpm7 default

COPY srcs/wordpress/healthy.sh /
COPY srcs/wordpress/run.sh /
ENTRYPOINT sh run.sh