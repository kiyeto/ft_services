#! /bin/sh

ps | grep -v grep | grep nginx
return=$?
if [ $return -ne 0 ]; 
then
	exit $return
fi

ps | grep -v grep | grep sshd
return=$?
if [ $return -ne 0 ]; 
then
	exit $return
fi