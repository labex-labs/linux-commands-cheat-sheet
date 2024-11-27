#!/bin/bash
if [ ! -d "dir1" ] && [ ! -d "dir2" ] && [ ! -d "dir3" ]; then
  echo "Passed: Created and deleted the empty directories successfully"
  exit 0
else
  echo "Failed: Unable to create or delete the empty directories"
  exit 1
fi