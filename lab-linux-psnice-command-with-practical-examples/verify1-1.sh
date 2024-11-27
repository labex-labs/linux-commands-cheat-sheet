#!/bin/bash
CURRENT_NI=$(ps -o ni= -p $(pgrep -n bash))
if [ "$CURRENT_NI" -eq "-5" ]; then
  exit 0
else
  echo "The nice value of the current bash process is not -5."
  exit 1
fi