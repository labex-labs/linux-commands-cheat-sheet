#!/bin/bash
output=$(/home/labex/project/sample_executable.sh)
if [[ "$output" == "This is a sample executable file." ]]; then
  exit 0
else
  echo "Decompressed file execution failed"
  exit 1
fi