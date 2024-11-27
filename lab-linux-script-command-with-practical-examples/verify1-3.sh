#!/bin/bash
output=$(~/project/hello.sh)
if [ "$output" = "Hello, World!" ]; then
  echo "The script output is correct"
  exit 0
else
  echo "The script output is incorrect"
  exit 1
fi