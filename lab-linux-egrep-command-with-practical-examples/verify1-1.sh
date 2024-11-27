#!/bin/bash
if egrep 'years' data.txt | grep -q 'John Doe, 30 years old'; then
  exit 0
else
  echo "Could not find the expected output from egrep command."
  exit 1
fi