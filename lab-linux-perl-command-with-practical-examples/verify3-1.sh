#!/bin/bash
file_contents=$(cat ~/project/data.txt)
if [[ "$file_contents" == *"John,30,San Francisco"* ]] && [[ "$file_contents" == *"Jane,25,Los Angeles"* ]] && [[ "$file_contents" == *"Bob,35,Chicago"* ]]; then
  exit 0
else
  echo "File contents do not match the expected output"
  exit 1
fi