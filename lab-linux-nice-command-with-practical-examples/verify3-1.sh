#!/bin/bash
cpu_intensive_pid=$(pgrep -f "cpu_intensive.py")
cpu_intensive_niceness=$(ps -p $cpu_intensive_pid -o ni --no-headers)
if [[ $cpu_intensive_niceness -eq 10 ]]; then
  exit 0
else
  echo "The niceness value of the CPU-intensive task is not 10."
  exit 1
fi