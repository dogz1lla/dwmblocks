#!/bin/sh
ACTION=$1
DELTA=$2

if [[ -n $ACTION ]] then
    case $ACTION in
        "up")
            xbacklight -inc $DELTA
            ;;
        "down")
            xbacklight -dec $DELTA
            ;;
    esac
fi
