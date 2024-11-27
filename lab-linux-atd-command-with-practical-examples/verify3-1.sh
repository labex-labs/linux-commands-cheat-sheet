#!/bin/bash
if [ -f ~/project/output.txt ]; then
  echo "Scheduled task executed successfully"
  exit 0
else
  echo "Scheduled task not executed"
  exit 1
fi