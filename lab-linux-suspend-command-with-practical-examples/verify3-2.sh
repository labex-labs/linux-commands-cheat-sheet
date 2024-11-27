#!/bin/bash
sudo systemctl hibernate
if [ $? -eq 0 ]; then
  echo "System suspended to disk (S4) successfully"
  # Wait for the system to resume
  sleep 20
  echo "System resumed from disk (S4) successfully"
  exit 0
else
  echo "Failed to suspend the system to disk (S4)"
  exit 1
fi