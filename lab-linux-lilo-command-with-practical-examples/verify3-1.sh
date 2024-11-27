#!/bin/bash
if grep -q "Error" /var/log/lilo.log; then
  echo "Errors found in the lilo log file."
  exit 1
else
  echo "No errors found in the lilo log file."
  exit 0
fi