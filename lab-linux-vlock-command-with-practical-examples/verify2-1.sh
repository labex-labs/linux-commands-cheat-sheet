#!/bin/bash
# Check if the terminal is locked
if ! sudo vlock -n; then
  echo "Terminal is not locked"
  exit 1
fi
echo "Terminal lock verification successful"