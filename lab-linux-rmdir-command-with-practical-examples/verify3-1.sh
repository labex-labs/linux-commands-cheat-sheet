#!/bin/bash
if [ ! -d "non_empty_dir" ]; then
  echo "Passed: Removed the non-empty directory successfully"
  exit 0
else
  echo "Failed: Unable to remove the non-empty directory"
  exit 1
fi