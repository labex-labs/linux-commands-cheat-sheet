#!/bin/bash
if [[ $(jobs -l | grep -c "sleep") -eq 3 ]]; then
    exit 0
else
    echo "The expected background processes were not found."
    exit 1
fi