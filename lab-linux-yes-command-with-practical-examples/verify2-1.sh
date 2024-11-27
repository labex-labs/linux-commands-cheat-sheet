#!/bin/bash
output=$(yes "hello" | head -n 5)
if [[ "$output" == "hello\nhello\nhello\nhello\nhello" ]]; then
  exit 0
else
  echo "The output of the yes command does not match the expected output."
  exit 1
fi