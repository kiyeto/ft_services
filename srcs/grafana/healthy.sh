#! /bin/sh

ps | grep -v grep | grep grafana
return=$?
if [ $return -ne 0 ]; 
then
	exit $return
fi