#!/bin/bash
background_pid=$(pgrep -f "background_script.sh")
background_niceness=$(ps -p $background_pid -o ni --no-headers)
if [[ $background_niceness -eq 5 ]]; then
  exit 0
else
  echo "The niceness value of the background task is not 5."
  exit 1
fi