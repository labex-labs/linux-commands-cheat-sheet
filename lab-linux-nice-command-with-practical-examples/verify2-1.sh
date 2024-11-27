#!/bin/bash
first_sleep_pid=$(pgrep sleep | head -n 1)
first_sleep_niceness=$(ps -p $first_sleep_pid -o ni --no-headers)
if [[ $first_sleep_niceness -eq 0 ]]; then
  exit 0
else
  echo "The niceness value of the first sleep process is not 0."
  exit 1
fi