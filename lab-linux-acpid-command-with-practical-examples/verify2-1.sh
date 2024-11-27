#!/bin/bash
if grep -q "Laptop lid closed, suspending system..." /var/log/syslog; then
  exit 0
else
  echo "The lid-close event handler does not appear to be working correctly."
  exit 1
fi