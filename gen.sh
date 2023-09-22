#!/bin/sh

while true; do
    n=1
    for var in `seq 1 $n`;
    do
	ip=`cat /ip.txt | shuf -n 1`
	ts=`date +"[%d/%b/%Y:%k:%M:%S %z]"`
	uri=`cat /words.txt | shuf -n 1`
	status=`cat /status.txt | shuf -n 1`
	echo "${ip} - - ${ts} \"GET /${uri} HTTP/1.0\" ${status} 1702"

    done
    sleep 3;
done
