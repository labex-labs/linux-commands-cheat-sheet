#!/bin/bash
if [ -f large_file.txt ]; then
  echo "Large file created successfully"
  exit 0
else
  echo "Large file not found"
  exit 1
fi