#!/bin/sh

docker-compose up -d --build

date=`date '+%Y-%m-%d'`
echo $date 

while [ $date -eq `date '+%Y-%m-%d'` ]
do
   curl 
done 
