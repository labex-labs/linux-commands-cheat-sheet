#!/bin/bash
if sudo journalctl -u sshd.service | grep -q "sshd"; then
  exit 0
else
  echo "Failed to filter journalctl by service"
  exit 1
fi