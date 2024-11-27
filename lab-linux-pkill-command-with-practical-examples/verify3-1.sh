#!/bin/bash
sleep_pid=$(pgrep -f 'sleep 1000')
if [ -n "$sleep_pid" ]; then
  echo "sleep 1000 process still running. Please terminate it using pkill -P $sleep_pid."
  exit 1
else
  exit 0
fi