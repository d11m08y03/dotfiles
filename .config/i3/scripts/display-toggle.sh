#!/bin/bash

INTERNAL="eDP-1"
EXTERNAL="DP-1-1"

# Check if the external monitor is connected AND has an active resolution layout
if xrandr | grep "$EXTERNAL connected" | grep -q "[0-9]x[0-9]"; then
    # External screen is currently ACTIVE -> Turn it off, turn laptop screen back on
    xrandr --output "$EXTERNAL" --off --output "$INTERNAL" --auto --primary
else
    # External screen is currently OFF or missing -> Enable it at 100Hz and turn off laptop screen
    xrandr --output "$INTERNAL" --off --output "$EXTERNAL" --mode 1920x1080 --rate 100.00 --primary
fi
