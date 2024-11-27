#!/bin/bash
if sudo journalctl -t sshd | grep -q "sshd"; then
  exit 0
else
  echo "Failed to filter journalctl by process"
  exit 1
fi