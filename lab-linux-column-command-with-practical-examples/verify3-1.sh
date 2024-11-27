#!/bin/bash
if grep -q "column -t -s\$'\t' -o20" data.txt; then
  exit 0
else
  exit 1
fi