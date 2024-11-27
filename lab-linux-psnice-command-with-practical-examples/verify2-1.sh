#!/bin/bash
CURRENT_NI=$(ps -o ni= -p $(pgrep -n sleep))
if [ "$CURRENT_NI" -eq "-5" ]; then
  exit 0
else
  echo "The nice value of the sleep process is not -5."
  exit 1
fi