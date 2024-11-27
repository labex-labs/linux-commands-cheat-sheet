#!/bin/bash
if lsblk -t | grep -q "disk"; then
  exit 0
else
  echo "The lsblk -t command did not display the expected disk devices."
  exit 1
fi