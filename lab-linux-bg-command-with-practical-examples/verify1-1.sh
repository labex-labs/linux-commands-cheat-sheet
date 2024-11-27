#!/bin/bash
if [[ $(jobs -l | grep -c "sleep 60") -eq 1 ]]; then
    exit 0
else
    echo "The bg command did not move the suspended process to the background."
    exit 1
fi