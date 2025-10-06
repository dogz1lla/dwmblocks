#!/bin/sh
ACTION=$1
DELTA=$2

if [[ -n $ACTION ]] then
    case $ACTION in
        "mute")
            amixer -q set Master toggle
            ;;
        "up"|"down")
            case $ACTION in
                "up")
                    amixer -q set Master $DELTA%+
                    ;;
                "down")
                    amixer -q set Master $DELTA%-
                    ;;
            esac
            ;;
    esac
    # send a signal to dwmblocks
    kill -36 $(pidof dwmblocks)
fi

STATE=$(amixer get Master | awk '$0~/%/{print $6}' | tr -d '[]')
if [[ $STATE == "on" ]] then
    ICON=""
else
    ICON=""
fi

# output the current percent
VOLUME=$(amixer get Master | awk '$0~/%/{print $4}' | tr -d '[]' | sed 's/%//g')
printf "$ICON\xC2\xA0$VOLUME%%"
