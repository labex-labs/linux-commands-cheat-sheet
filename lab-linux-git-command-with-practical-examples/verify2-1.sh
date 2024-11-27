#!/bin/bash
if git log | grep -q "Add test.txt file"; then
  if [ -f "$HOME/project/test.txt" ]; then
    exit 0
  else
    echo "test.txt file not found in the project directory"
    exit 1
  fi
else
  echo "Commit with message 'Add test.txt file' not found"
  exit 1
fi