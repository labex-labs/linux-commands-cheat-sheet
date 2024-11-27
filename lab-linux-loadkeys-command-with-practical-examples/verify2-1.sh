#!/bin/bash
output=$(loadkeys -c)
if [[ "$output" == *"fr-latin1"* ]]; then
  exit 0
else
  echo "Failed to change the keyboard layout to French."
  exit 1
fi