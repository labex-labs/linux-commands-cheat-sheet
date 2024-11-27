#!/bin/bash
if ls *.gz | xargs zgrep -l "file" | grep -q "file"; then
    exit 0
else
    echo "The combination of zgrep with other commands did not work as expected."
    exit 1
fi