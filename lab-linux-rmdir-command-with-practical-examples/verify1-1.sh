#!/bin/bash
if [ ! -d "empty_dir" ]; then
  echo "Passed: Removed the empty directory successfully"
  exit 0
else
  echo "Failed: Unable to remove the empty directory"
  exit 1
fi