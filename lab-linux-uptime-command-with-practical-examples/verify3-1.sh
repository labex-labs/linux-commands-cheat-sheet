#!/bin/bash
uptime_output=$(uptime)

if [[ "$uptime_output" =~ "up" ]] && [[ "$uptime_output" =~ "load average" ]]; then
  echo "Uptime and load average information displayed correctly."
  exit 0
else
  echo "The uptime command did not display the expected output."
  exit 1
fi