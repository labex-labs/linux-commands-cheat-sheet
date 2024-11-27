#!/bin/bash
BACKGROUND_PID=$(pgrep -n "while true; do echo")
BACKGROUND_NI=$(ps -o ni= -p $BACKGROUND_PID)
if [ "$BACKGROUND_NI" -eq "0" ]; then
  exit 0
else
  echo "The nice value of the background process is not 0."
  exit 1
fi