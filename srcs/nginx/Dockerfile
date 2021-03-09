FROM alpine:3.11
EXPOSE 80 443 22
RUN apk update
RUN apk add  --no-cache nginx openssl openssh
RUN apk add openrc --no-cache
#for ssh
RUN adduser -D 'admin'
RUN echo "admin:1234" | chpasswd

RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
COPY srcs/nginx/index.html /www
COPY srcs/nginx/default.conf /etc/nginx/conf.d
#sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
COPY srcs/nginx/nginx-selfsigned.crt ./etc/ssl/certs/nginx-selfsigned.crt
COPY srcs/nginx/nginx-selfsigned.key ./etc/ssl/private/nginx-selfsigned.key

COPY srcs/nginx/healthy.sh /
COPY srcs/nginx/run.sh /
ENTRYPOINT sh run.sh
