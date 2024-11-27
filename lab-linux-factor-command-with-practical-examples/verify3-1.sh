#!/bin/bash
if factor 1234567 | grep -q "1234567: 3 7 59 2903"; then
  exit 0
else
  echo "The output of 'factor 1234567' does not match the expected prime factorization."
  exit 1
fi