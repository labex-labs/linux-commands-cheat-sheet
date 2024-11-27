#!/bin/bash
if [ -f output.txt ]; then
  if grep -q "This is a sample text file." output.txt && grep -q "Adding more content." output.txt; then
    echo "Output redirected to file and terminal successfully"
  else
    echo "Output not found in the file"
    exit 1
  fi
else
  echo "output.txt file not found"
  exit 1
fi