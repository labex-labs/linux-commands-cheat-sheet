#!/bin/bash
uptime_output=$(uptime)
if [[ "$uptime_output" =~ "load average" ]]; then
  exit 0
else
  echo "The uptime command did not display the expected output."
  exit 1
fi