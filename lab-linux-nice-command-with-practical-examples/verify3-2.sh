#!/bin/bash
io_bound_pid=$(pgrep -f "rsync")
io_bound_niceness=$(ps -p $io_bound_pid -o ni --no-headers)
if [[ $io_bound_niceness -eq -5 ]]; then
  exit 0
else
  echo "The niceness value of the I/O-bound task is not -5."
  exit 1
fi