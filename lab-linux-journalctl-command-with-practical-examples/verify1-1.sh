#!/bin/bash
if sudo journalctl | grep -q "Logs begin at"; then
  exit 0
else
  echo "Failed to execute journalctl command"
  exit 1
fi