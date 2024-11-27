#!/bin/bash
if smbclient //windows-server/share -U username%password -c 'ls' | grep -q 'example.txt'; then
  echo "Successfully listed files and directories on the Windows share"
  exit 0
else
  echo "Failed to list files and directories on the Windows share"
  exit 1
fi