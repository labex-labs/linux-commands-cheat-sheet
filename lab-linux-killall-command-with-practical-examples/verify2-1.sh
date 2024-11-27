#!/bin/bash
# Start some background processes
sleep 1000 &
sleep 2000 &
sleep 3000 &

# Try to kill the processes by name
if ! sudo killall sleep &> /dev/null; then
  echo "Failed to kill processes by name using the killall command."
  exit 1
fi

# Verify that the processes are no longer running
if pgrep sleep &> /dev/null; then
  echo "Some sleep processes are still running."
  exit 1
fi

echo "Successfully killed processes by name using the killall command."
exit 0