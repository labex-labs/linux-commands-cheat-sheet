#!/bin/bash
if grep -q "column -t -s," data.txt; then
  exit 0
else
  exit 1
fi