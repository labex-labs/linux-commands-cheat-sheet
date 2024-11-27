#!/bin/bash
if awk -F',' '{print $2}' data.txt | grep -q '25\|30\|35'; then
  exit 0
else
  echo "Failed to print the second field (age) of each line correctly."
  exit 1
fi