#!/bin/bash
if factor 17 | grep -q "17: 17"; then
  exit 0
else
  echo "The output of 'factor 17' does not indicate that 17 is a prime number."
  exit 1
fi