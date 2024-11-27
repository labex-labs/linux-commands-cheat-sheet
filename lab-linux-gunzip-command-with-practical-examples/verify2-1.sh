#!/bin/bash
if [ ! -f sample2.txt ]; then
  echo "Error: sample2.txt file not found."
  exit 1
fi
if grep -q "This is another sample text file." sample2.txt; then
  echo "Verification passed: sample2.txt file decompressed successfully."
  exit 0
else
  echo "Error: sample2.txt file content does not match expected."
  exit 1
fi