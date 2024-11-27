#!/bin/bash
if [ -L ~/project/destination/file1.txt ] && [ -L ~/project/destination/file2.txt ]; then
  exit 0
else
  echo "Symbolic links were not created successfully."
  exit 1
fi