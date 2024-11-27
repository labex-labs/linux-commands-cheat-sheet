#!/bin/bash
output=$(~/project/sample_executable.sh.gz)
if [[ "$output" == "This is a sample executable file." ]]; then
  exit 0
else
  echo "Compressed file execution failed"
  exit 1
fi