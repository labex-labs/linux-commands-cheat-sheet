#!/bin/bash
average_age=$(gawk -F, '{sum += $2} END {print int(sum/NR)}' ~/project/data.txt)
if [[ "$average_age" != "30" ]]; then
  exit 1
fi