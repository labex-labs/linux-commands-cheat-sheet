#!/bin/bash
# Check if the terminal is unlocked
if sudo vlock -n; then
  echo "Terminal is still locked"
  exit 1
fi
echo "Terminal unlock verification successful"