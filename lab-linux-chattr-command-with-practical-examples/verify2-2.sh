#!/bin/bash
mkdir -p ~/project/logs
sudo chattr +a ~/project/logs
echo "New log entry" >> ~/project/logs/log.txt
if echo "Modifying log" > ~/project/logs/log.txt 2>/dev/null; then
  echo "Failed to set the append-only attribute on ~/project/logs"
  exit 1
fi
echo "Append-only attribute on ~/project/logs verified successfully"
exit 0