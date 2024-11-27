#!/bin/bash
if [ "$(swapon --show | grep -c '/swapfile')" -gt 0 ]; then
  exit 0
else
  echo "Swap file not found or not activated."
  exit 1
fi