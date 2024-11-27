#!/bin/bash
current_volume=$(aumix -v | grep -o -E '[0-9]+%' | head -n 1 | sed 's/%//')
if [ "$current_volume" -eq 50 ]; then
    exit 0
else
    echo "Master volume is not set to 50%"
    exit 1
fi