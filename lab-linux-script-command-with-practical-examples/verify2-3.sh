#!/bin/bash
output=$(~/project/variables.sh)
if [[ "$output" == *"Hello, John Doe!"* && "$output" == *"The current date is:"* ]]; then
  echo "The script output is correct"
  exit 0
else
  echo "The script output is incorrect"
  exit 1
fi