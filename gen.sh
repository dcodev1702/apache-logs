#!/bin/sh

while true; do
    n=1
    for var in `seq 1 $n`;
    do
        ip=`cat $BUILD_DIR/ip.txt | shuf -n 1`
        ts=`date +"[%d/%b/%Y:%k:%M:%S %z]"`
        uri=`cat $BUILD_DIR/words.txt | shuf -n 1`
        status=`cat $BUILD_DIR/status.txt | shuf -n 1`
        echo "${ip} - - ${ts} \"GET /${uri} HTTP/1.0\" ${status} 1702"

    done
    sleep 15;
done
