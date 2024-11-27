#!/bin/bash
output=$(sleep 2 && echo "Completed")
if [[ "$output" == "Completed" ]]; then
    exit 0
else
    exit 1
fi