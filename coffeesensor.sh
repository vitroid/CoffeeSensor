#!/bin/bash
airport=/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport
server=no
#server=yes
count=0
while :
do
    if  $airport -s | grep CoffeeSensor
    then
	count=`expr $count + 1`
	echo $count
	date
    else
	count=0
    fi

    if [ $count = 3 ]
    then
        if [ $server = "yes" ]
        then
	    echo "Coffee will be available at root B-131 soon!" | mail -s 'coffee' coffee@cc.okayama-u.ac.jp
        fi
	date=`date`
	growlnotify --sticky --message "$date" CoffeeSensor
    fi
    sleep 30
done
