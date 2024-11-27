#!/bin/bash
if grep -q "column -t -s, -o20" data.csv; then
  exit 0
else
  exit 1
fi