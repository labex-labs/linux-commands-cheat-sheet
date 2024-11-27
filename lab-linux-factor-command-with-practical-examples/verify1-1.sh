#!/bin/bash
if factor 12 | grep -q "2 2 3"; then
  exit 0
else
  echo "The output of 'factor 12' does not match the expected prime factorization."
  exit 1
fi