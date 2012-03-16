#!/bin/bash

INTERNAL="LVDS1"
EXTERNAL="HDMI1"

if (xrandr | grep "$EXTERNAL" | grep "+")
    then
    xrandr --output $EXTERNAL --off --output $INTERNAL --auto
    else
        if (xrandr | grep "$EXTERNAL" | grep "connected")
            then
            xrandr --output $INTERNAL --off --output $EXTERNAL --auto
        fi
fi
