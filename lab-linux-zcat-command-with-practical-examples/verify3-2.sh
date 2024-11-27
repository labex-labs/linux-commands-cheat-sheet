#!/bin/bash
if zcat another_sample.txt.gz | wc -l | grep -q "1"; then
  exit 0
else
  echo "The combination of zcat and wc did not return the expected number of lines."
  exit 1
fi