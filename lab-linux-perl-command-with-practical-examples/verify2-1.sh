#!/bin/bash
output=$(~/project/math.pl 20 10)
if [[ "$output" == "The sum of 20 and 10 is 30" ]]; then
  exit 0
else
  echo "Perl script execution failed"
  exit 1
fi