#!/bin/bash

# Define the display
MON="DP-4"

# Check if the monitor is in the 'active' list
if xrandr --listactivemonitors | grep -q "$MON"; then
    xrandr --output "$MON" --off
    # Optional: send a notification if you have a notification daemon like dunst/mako
    # notify-send "Display" "$MON has been turned OFF" --icon=display
else
    # Turn it on, set as primary, and ensure it's not overlapping other screens
    xrandr --output "$MON" --auto --primary
    # notify-send "Display" "$MON has been turned ON" --icon=display
fi
