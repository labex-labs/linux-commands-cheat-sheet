#!/bin/bash
aumix -c | grep -q "PCM     (volume:   0%)"
if [ $? -eq 0 ]; then
    aumix -u PCM > /dev/null
    aumix -c | grep -q "PCM     (volume: 100%)"
    if [ $? -eq 0 ]; then
        exit 0
    else
        echo "PCM channel was not unmuted properly"
        exit 1
    fi
else
    echo "PCM channel was not muted properly"
    exit 1
fi