#!/bin/bash
if sudo -u newuser -v; then
  exit 0
else
  echo "Failed to execute a command with sudo as the newuser"
  exit 1
fi