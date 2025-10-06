#!/bin/sh

USAGE=$(free -h | awk '/^Mem/ { print $3"/"$2 }' | sed s/i//g)

printf "\xC2\xA0$USAGE"
