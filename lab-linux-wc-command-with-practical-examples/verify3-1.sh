#!/bin/bash
total_lines=$(find . -type f -name "*.txt" -exec wc -l {} \; | awk '{total += $1} END {print total}')
if [ "$total_lines" -eq 9 ]; then
  exit 0
else
  echo "The combined wc and find command did not produce the expected total number of lines."
  exit 1
fi