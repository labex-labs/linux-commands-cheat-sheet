#!/bin/bash
load_1m=$(awk '{print $1}' <<< "$(tload -s 1)")
load_5m=$(awk '{print $2}' <<< "$(tload -s 1)")
load_15m=$(awk '{print $3}' <<< "$(tload -s 1)")

if (( $(echo "$load_1m > 2" | bc -l) )); then
  exit 1
fi

echo "Load averages:"
echo "1-minute: $load_1m"
echo "5-minute: $load_5m"
echo "15-minute: $load_15m"