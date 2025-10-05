#!/bin/sh
BAT0=$(cat /sys/class/power_supply/BAT0/capacity)
BAT1=$(cat /sys/class/power_supply/BAT1/capacity)
printf "󱊣($BAT0%%\xC2\xA0&\xC2\xA0$BAT1%%)"
