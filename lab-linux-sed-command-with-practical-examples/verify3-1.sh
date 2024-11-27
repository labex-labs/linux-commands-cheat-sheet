#!/bin/bash
if grep -q "This is the final file." file1.txt && grep -q "This is the updated file." file2.txt; then
  exit 0
else
  echo "The files were not edited correctly."
  exit 1
fi