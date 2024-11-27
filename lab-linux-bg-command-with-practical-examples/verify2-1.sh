#!/bin/bash
if [[ $(jobs -l | grep -c "sleep 120") -eq 1 ]]; then
    exit 0
else
    echo "The process was not moved to the background."
    exit 1
fi