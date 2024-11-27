#!/bin/bash
if [ -f output.txt ]; then
  echo "output.txt file created successfully"
else
  echo "output.txt file not found"
  exit 1
fi