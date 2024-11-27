#!/bin/bash
if factor 24 36 | grep -q "24: 2 2 2 3\n36: 2 2 3 3" && factor 24 36 | grep -q "6"; then
  exit 0
else
  echo "The output of 'factor 24 36' does not correctly identify the greatest common divisor of 24 and 36."
  exit 1
fi