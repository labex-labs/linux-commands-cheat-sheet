#!/bin/bash
if [ ! -f sample.txt ]; then
  echo "Error: sample.txt file not found."
  exit 1
fi
if grep -q "This is a sample text file." sample.txt; then
  echo "Verification passed: sample.txt file decompressed successfully."
  exit 0
else
  echo "Error: sample.txt file content does not match expected."
  exit 1
fi