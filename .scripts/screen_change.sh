#!/bin/bash

IN="LVDS1"
EXT="VGA1"

if (xrandr | grep "$EXT disconnected"); then
    xrandr --output $IN --auto --output $EXT --off
else
    CMD=`echo -e "alone\npresentation\nleft\nright" | dmenu`

    if [[ $CMD = "alone" ]]
    then
        xrandr --output $IN --auto --output $EXT --off
    fi

    if [[ $CMD = "presentation" ]]
    then
        xrandr --output $EXT --mode 1024x768 --same-as $IN
    fi

    if [[ $CMD = "left" ]]
    then
        xrandr --output $IN --auto --primary --output $EXT --auto --left-of $IN
    fi

    if [[ $CMD = "right" ]]
    then
        xrandr --output $IN --auto --primary --output $EXT --auto --right-of $IN
    fi
fi
