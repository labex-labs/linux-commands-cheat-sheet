#!/bin/bash
sudo systemctl suspend
if [ $? -eq 0 ]; then
  echo "System suspended to RAM successfully"
  # Wait for the system to resume
  sleep 10
  echo "System resumed from RAM successfully"
  exit 0
else
  echo "Failed to suspend the system to RAM"
  exit 1
fi