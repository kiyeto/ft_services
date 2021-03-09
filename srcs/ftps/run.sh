#!bin/bash
adduser -D 'kiyeto'
echo "kiyeto:1234" | chpasswd
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf