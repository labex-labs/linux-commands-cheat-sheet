#!/bin/bash
# Start some background processes as the labex user
sudo -u labex sleep 1000 &
sudo -u labex sleep 2000 &
sudo -u labex sleep 3000 &

# Try to kill the processes owned by the labex user
if ! sudo killall -u labex &> /dev/null; then
  echo "Failed to kill processes owned by the labex user using the killall command."
  exit 1
fi

# Verify that the processes are no longer running
if pgrep -u labex sleep &> /dev/null; then
  echo "Some sleep processes owned by the labex user are still running."
  exit 1
fi

echo "Successfully killed processes owned by the labex user using the killall command."
exit 0