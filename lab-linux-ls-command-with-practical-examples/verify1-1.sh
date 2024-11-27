#!/bin/bash
if ls | grep -q "file1.txt"; then
  exit 0
else
  echo "Could not find file1.txt in the current directory"
  exit 1
fi