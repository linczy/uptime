#!/usr/bin/env bash

pid=`ps | grep "ping [g]oogle.com" | tr -s ' ' | cut  -d " " -f 2`
echo "Found pid ${pid} related to ping is going to be killed with -INT (ctrl-c)"
kill -INT $pid
sleep 3
ps
echo "ping SUCCESSFULLY killed to get statistics data in the log"

