#!/bin/sh

USAGE=$(mpstat | tail -1 | awk '{print int(100.0-$(NF))}')

printf "\xC2\xA0$USAGE%%"
