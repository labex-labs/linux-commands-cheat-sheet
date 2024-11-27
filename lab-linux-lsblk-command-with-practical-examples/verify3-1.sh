#!/bin/bash
if lsblk --output NAME,SIZE,MOUNTPOINT | grep -q "sda"; then
  exit 0
else
  echo "The lsblk --output command did not display the expected block device information."
  exit 1
fi