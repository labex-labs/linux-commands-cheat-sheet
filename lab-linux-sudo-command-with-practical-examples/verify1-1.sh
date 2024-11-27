#!/bin/bash
if sudo -v; then
  exit 0
else
  echo "Failed to execute a command with sudo"
  exit 1
fi