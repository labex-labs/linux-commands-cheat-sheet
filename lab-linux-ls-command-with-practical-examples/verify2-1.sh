#!/bin/bash
if ls -l | grep -q "file1.txt"; then
  exit 0
else
  echo "Could not find detailed information for file1.txt"
  exit 1
fi