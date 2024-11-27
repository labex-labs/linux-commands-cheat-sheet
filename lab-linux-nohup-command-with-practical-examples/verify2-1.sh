#!/bin/bash
if ps aux | grep -q 'long_process.sh'; then
  exit 0
else
  echo "The nohup process is not running."
  exit 1
fi