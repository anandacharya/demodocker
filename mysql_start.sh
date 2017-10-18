#!/bin/bash
service sshd start
service mysqld start

HOSTNAME=`hostname`
HOSTIP=`ifconfig  eth0 | grep "inet addr" | awk '{ print $2 }' | grep -o [0-9.]*`
sleep 10

/usr/bin/mysqladmin -h localhost -u root password 'dbpass'
/usr/bin/mysqladmin -h $HOSTNAME -u root password 'dbpass'

perl -pi -e "s/MYSQLHOSTIP/$HOSTIP/g" /tmp/demo.sql
mysql -uroot -pdbpass < /tmp/demo.sql

