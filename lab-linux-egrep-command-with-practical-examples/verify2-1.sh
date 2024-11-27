#!/bin/bash
if egrep '^J\w+' data.txt | grep -q 'John Doe, 30 years old'; then
  exit 0
else
  echo "Could not find the expected output from egrep with the '^J\w+' pattern."
  exit 1
fi