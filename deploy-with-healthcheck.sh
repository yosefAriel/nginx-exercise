#!/bin/sh

docker-compose up -d --build

START_DATE=`date '+%Y%m%d'` 
DATE=`date '+%Y%m%d'`

while [ "$START_DATE" = "$DATE" ]
do
  if [ `curl -o -I -L -s -w "%{http_code}" http://localhost/app` -eq "200" ] ; then
	echo "Endpoint up"
  else 
	echo "Endpoint down"
  fi 
  sleep 10s
DATE=`date '+%Y%m%d'`
done
