#!/bin/bash
if seq 1 2 10 | grep -q "1\n3\n5\n7\n9"; then
  exit 0
else
  echo "The output of 'seq 1 2 10' does not match the expected sequence."
  exit 1
fi