#!/bin/bash
if grep -q "male" data.txt && grep -q "female" data.txt; then
  exit 0
else
  echo "grep search failed"
  exit 1
fi