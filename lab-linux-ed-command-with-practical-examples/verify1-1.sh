#!/bin/bash
if [ -f ~/project/example.txt ]; then
  if grep -q "This is a sample text file." ~/project/example.txt; then
    if grep -q "This is the second line." ~/project/example.txt; then
      exit 0
    else
      echo "The second line of the file is missing."
      exit 1
    fi
  else
    echo "The first line of the file is missing."
    exit 1
  fi
else
  echo "The file example.txt was not created."
  exit 1
fi