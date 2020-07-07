#!/bin/sh

while read linea ; do

instance="`echo $linea |awk -F "," '{print $1}'`"
name="`echo $linea |awk -F "," '{print $2}'`"

ssh root@"$instance" systemctl start "$name" >> hooh-service-test-output.log

done < service-notify-test.tmp
