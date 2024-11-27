#!/bin/bash
if [ ! -f "newfile.txt" ]; then
  exit 0
else
  echo "File deletion failed"
  exit 1
fi