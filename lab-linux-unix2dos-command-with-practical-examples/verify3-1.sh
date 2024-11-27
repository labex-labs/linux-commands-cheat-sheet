#!/bin/bash
if grep -q $'\r' sample_unix.txt; then
  echo "The CR characters were not removed from the sample_unix.txt file."
  exit 1
else
  exit 0
fi