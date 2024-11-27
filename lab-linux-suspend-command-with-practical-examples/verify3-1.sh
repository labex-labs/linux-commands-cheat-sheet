#!/bin/bash
sudo systemctl suspend
if [ $? -eq 0 ]; then
  echo "System suspended to RAM (S3) successfully"
  # Wait for the system to resume
  sleep 10
  echo "System resumed from RAM (S3) successfully"
  exit 0
else
  echo "Failed to suspend the system to RAM (S3)"
  exit 1
fi