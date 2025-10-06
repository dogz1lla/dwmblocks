#!/bin/sh

N=$(pacman -Qu | wc -l)

printf "\xC2\xA0$N"
