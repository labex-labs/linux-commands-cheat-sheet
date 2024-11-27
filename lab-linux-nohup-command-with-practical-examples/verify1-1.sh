#!/bin/bash
if ps aux | grep -q 'sleep 60'; then
  exit 0
else
  echo "The nohup process is not running."
  exit 1
fi