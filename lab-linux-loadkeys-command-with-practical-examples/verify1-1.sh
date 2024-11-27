#!/bin/bash
output=$(loadkeys -c)
if [[ "$output" == *"keycode"* ]]; then
  exit 0
else
  echo "Failed to retrieve the current keyboard layout."
  exit 1
fi