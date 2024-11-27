#!/bin/bash
output=$(loadkeys -c)
if [[ "$output" == *"keycode  30 = x X"* ]]; then
  exit 0
else
  echo "Failed to load the custom keyboard layout."
  exit 1
fi