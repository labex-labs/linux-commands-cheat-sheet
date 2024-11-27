#!/bin/bash
if smbclient //windows-server/share -U username%password -c 'ls' &> /dev/null; then
  echo "Successfully connected to the Windows share"
  exit 0
else
  echo "Failed to connect to the Windows share"
  exit 1
fi