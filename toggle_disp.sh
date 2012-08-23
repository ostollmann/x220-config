#!/bin/bash

INTERNAL="LVDS1"
EXTERNAL="VGA1"

if (xrandr | grep "$EXTERNAL" | grep "+")
    then
    xrandr --output $EXTERNAL --off --output $INTERNAL --auto
    feh --bg-scale /home/ost/media/images/wallpapers/beach1.jpg &
    else
        if (xrandr | grep "$EXTERNAL" | grep "connected")
            then
            xrandr --output $INTERNAL --off --output $EXTERNAL --auto
            feh --bg-scale /home/ost/media/images/wallpapers/beach1.jpg &
        fi
fi
