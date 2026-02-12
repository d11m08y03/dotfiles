#!/usr/bin/env bash

# Get sink NAMES (not numeric IDs)
mapfile -t sinks < <(pactl list short sinks | awk '{print $2}')

# Current default sink name
current=$(pactl get-default-sink)

# Find next sink
for i in "${!sinks[@]}"; do
    if [[ "${sinks[$i]}" == "$current" ]]; then
        next_index=$(( (i + 1) % ${#sinks[@]} ))
        break
    fi
done

next_sink="${sinks[$next_index]}"

# Switch default
pactl set-default-sink "$next_sink"

# Move existing audio streams
for input in $(pactl list short sink-inputs | awk '{print $1}'); do
    pactl move-sink-input "$input" "$next_sink"
done
