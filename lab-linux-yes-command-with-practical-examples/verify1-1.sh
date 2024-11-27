#!/bin/bash
output=$(yes | head -n 5)
if [[ "$output" == "y\ny\ny\ny\ny" ]]; then
  exit 0
else
  echo "The output of the yes command does not match the expected output."
  exit 1
fi