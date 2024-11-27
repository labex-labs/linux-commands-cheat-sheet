#!/bin/bash
count=0
for i in {1..5}; do
    echo "Iteration $i"
    sleep 1
    count=$((count + 1))
done
if [[ $count -eq 5 ]]; then
    exit 0
else
    exit 1
fi