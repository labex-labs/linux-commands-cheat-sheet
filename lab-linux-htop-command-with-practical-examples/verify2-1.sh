#!/bin/bash
if pgrep -x "htop" > /dev/null
then
  echo "htop is running"
  exit 0
else
  echo "htop is not running"
  exit 1
fi