#!/bin/bash
# Check if the terminal is locked
if ! sudo vlock -n; then
  echo "Terminal is not locked"
  exit 1
fi

# Check if the terminal can be unlocked
if ! sudo vlock -u; then
  echo "Terminal cannot be unlocked"
  exit 1
fi
echo "Terminal lock and unlock verification successful"