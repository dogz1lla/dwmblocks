#!/bin/sh

CURRENT=$(xbacklight -ctrl tpacpi::kbd_backlight -get)

case $CURRENT in
    "50"|"100")
        xbacklight -ctrl tpacpi::kbd_backlight -set 0
        ;;
    "0")
        xbacklight -ctrl tpacpi::kbd_backlight -set 50
        ;;
esac
