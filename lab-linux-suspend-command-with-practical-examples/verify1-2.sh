#!/bin/bash
sudo systemctl hibernate
if [ $? -eq 0 ]; then
  echo "System suspended to disk (hibernated) successfully"
  exit 0
else
  echo "Failed to suspend the system to disk (hibernate)"
  exit 1
fi