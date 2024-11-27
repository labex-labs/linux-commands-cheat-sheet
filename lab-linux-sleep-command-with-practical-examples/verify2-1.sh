#!/bin/bash
start=$(date +%s)
sleep 2 && sleep 5 && sleep 1
end=$(date +%s)
duration=$((end - start))
if [[ $duration -ge 8 && $duration -le 10 ]]; then
    exit 0
else
    exit 1
fi