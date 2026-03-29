#!/bin/bash

# Define the internal display
MON="DP-4"

# Find the name of your external monitor automatically
# This looks for a 'connected' monitor that is NOT DP-4
EXT=$(xrandr --query | grep " connected" | grep -v "$MON" | cut -d" " -f1 | head -n1)

# Check if the internal monitor is currently active
if xrandr --listactivemonitors | grep -q "$MON"; then
    xrandr --output "$MON" --off
else
    # If an external monitor was found, put the laptop to the left of it
    if [ -n "$EXT" ]; then
        xrandr --output "$MON" --auto --primary --left-of "$EXT"
    else
        # If no external monitor is plugged in, just turn it on normally
        xrandr --output "$MON" --auto --primary
    fi
fi
