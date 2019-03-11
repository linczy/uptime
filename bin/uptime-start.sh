#!/usr/bin/env bash

start_time=`date +%Y%m%d_%H%M%S`
echo "start time=${start_time}"
ping google.com  | while read line; do echo ` date +%F_%T` - $line; done 2>&1 >  status_log_${start_time}.log
