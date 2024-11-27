#!/bin/bash
if [ -f "newfile.txt" ] && [ -f "newdir/copyfile.txt" ]; then
  exit 0
else
  echo "File creation or copy failed"
  exit 1
fi