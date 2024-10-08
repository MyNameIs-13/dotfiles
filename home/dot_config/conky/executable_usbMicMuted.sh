#!/bin/bash

# checks if the mic is muted or not
temp1=$(pactl list sources | grep -E 'Source #|Mute:')
if [[ "${temp1}" == *"yes"* ]]; then
    echo ""
fi
