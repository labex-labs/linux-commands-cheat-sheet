#!/bin/bash
if sudo ls -l /mnt | grep -q 'file1.txt' && sudo ls -l /mnt | grep -q 'directory1'; then
  echo "Minix file system contains the expected files and directories."
  exit 0
else
  echo "Minix file system does not contain the expected files and directories."
  exit 1
fi