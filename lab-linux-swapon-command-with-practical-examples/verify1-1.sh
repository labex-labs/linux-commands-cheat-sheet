#!/bin/bash
if [ "$(free -m | awk '/Swap/ {print $2}')" -gt 0 ]; then
  exit 0
else
  echo "No swap space found."
  exit 1
fi