#!/bin/bash
if ! sudo killall -u labex &> /dev/null; then
  echo "Failed to use the killall command to kill processes owned by the labex user."
  exit 1
fi
echo "Successfully used the killall command to kill processes."
exit 0