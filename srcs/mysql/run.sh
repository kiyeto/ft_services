#!bin/bash

# openrc default

# chown -R mysql: /var/lib/mysql
/etc/init.d/mariadb setup
/etc/init.d/mariadb start
mysql -u root -e "CREATE USER 'kiyeto'@'%' IDENTIFIED BY '1234';"
mysql -u root -e "CREATE DATABASE wordpress; use wordpress; source wordpressdb.sql;"
mysql -u root -e "CREATE DATABASE phpmyadmin; use phpmyadmin; source phpmyadmin.sql;"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'kiyeto'@'%'; FLUSH PRIVILEGES;"
# echo "CREATE DATABASE wordpress;" | mysql -u root
# echo "CREATE DATABASE phpmyadmin;" | mysql -u root
# echo "CREATE USER 'kiyeto'@'%' IDENTIFIED BY '1234';" | mysql -u root
# echo "GRANT ALL PRIVILEGES ON *.* TO 'kiyeto'@'%';" | mysql -u root
# echo "FLUSH PRIVILEGES;" | mysql -u root
mysql -u root wordpress < wordpressdb.sql
/etc/init.d/mariadb stop
/usr/bin/mysqld --user=root
/usr/bin/telegraf&