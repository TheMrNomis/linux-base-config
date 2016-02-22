#!/bin/sh

if [ $# -ne 2 ] || [ ! -f $2 ]
then
    echo "usage: $0 <locker|greeter> <file>"
    exit 0
fi

SCREENSIZE=`xrandr | grep -w "connected" | grep -o -E "[0-9]{1,}x[0-9]{1,}"`

convert $2 -resize $SCREENSIZE ~/.wallpapers/$1.png
