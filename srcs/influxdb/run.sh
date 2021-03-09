#!bin/bash
usr/sbin/influxd&
influx -execute "CREATE USER kiyeto WITH PASSWORD '1234' WITH ALL PRIVILEGES"
influx -execute "CREATE DATABASE influxdb"
telegraf --config /etc/telegraf.conf
top