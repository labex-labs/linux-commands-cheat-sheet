#!/bin/bash
if ps aux | grep -q 'long_process.sh'; then
  if grep -q 'Long-running process completed.' ~/project/output.log; then
    exit 0
  else
    echo "The nohup output was not redirected to the expected file."
    exit 1
  fi
else
  echo "The nohup process is not running."
  exit 1
fi