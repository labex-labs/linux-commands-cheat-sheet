#!/bin/bash
if pgrep -x "showkey" > /dev/null; then
  echo "showkey is running"
  exit 0
else
  echo "showkey is not running"
  exit 1
fi