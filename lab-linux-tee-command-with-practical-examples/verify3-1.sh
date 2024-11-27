#!/bin/bash
if [ -f sample.txt ]; then
  if grep -q "Appending more content." sample.txt && grep -q "This is the third line." sample.txt; then
    echo "Output appended to the file successfully"
  else
    echo "Output not found in the file"
    exit 1
  fi
else
  echo "sample.txt file not found"
  exit 1
fi