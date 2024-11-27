#!/bin/bash
if ! pgrep -f firefox > /dev/null; then
  exit 0
else
  echo "Firefox process still running. Please terminate it using pkill."
  exit 1
fi