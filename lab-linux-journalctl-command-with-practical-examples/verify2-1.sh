#!/bin/bash
if sudo journalctl -p err..crit | grep -q "error"; then
  exit 0
else
  echo "Failed to filter journalctl by log level"
  exit 1
fi