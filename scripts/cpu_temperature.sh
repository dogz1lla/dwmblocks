#!/bin/sh

TEMP=$(sensors | grep CPU | awk '{print $2}')

printf "\xC2\xA0$TEMP"
