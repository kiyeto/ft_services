FROM alpine:3.11
RUN apk update && apk upgrade
# RUN apk add openrc openssl supervisor vsftpd
RUN apk add openssl vsftpd


# RUN chown root:root /home/kiyeto
# RUN mkdir /home/kiyeto/files
# RUN chown kiyeto:kiyeto /home/kiyeto/files
# RUN openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem
COPY srcs/ftps/vsftpd.pem /etc/ssl/private
COPY srcs/ftps/vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY srcs/ftps/healthy.sh /
COPY srcs/ftps/run.sh /
ENTRYPOINT sh run.sh