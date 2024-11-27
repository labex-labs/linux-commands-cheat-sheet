#!/bin/bash
if grep -q "Battery level below 20%, sending notification..." /var/log/syslog; then
  exit 0
else
  echo "The low-battery event handler does not appear to be working correctly."
  exit 1
fi