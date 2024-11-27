#!/bin/bash
if factor 12 24 36 | grep -q "12: 2 2 3\n24: 2 2 2 3\n36: 2 2 3 3"; then
  exit 0
else
  echo "The output of 'factor 12 24 36' does not match the expected prime factorizations."
  exit 1
fi