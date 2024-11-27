#!/bin/bash
if ! atq | grep -q "3"; then
  echo "Scheduled task removed successfully"
  exit 0
else
  echo "Scheduled task not removed"
  exit 1
fi