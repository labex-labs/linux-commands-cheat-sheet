#!/bin/bash
if [ -d "test1" ] && [ -d "test2" ] && [ -d "test3" ]; then
  exit 0
else
  echo "Directories test1, test2, and test3 were not created."
  exit 1
fi