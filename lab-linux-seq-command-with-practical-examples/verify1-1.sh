#!/bin/bash
if seq 5 | grep -q "1\n2\n3\n4\n5"; then
  exit 0
else
  echo "The output of 'seq 5' does not match the expected sequence."
  exit 1
fi