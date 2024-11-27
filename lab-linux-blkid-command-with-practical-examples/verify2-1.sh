#!/bin/bash
if sudo blkid -t TYPE=ext4 | grep -q "TYPE=\"ext4\""; then
  exit 0
else
  echo "blkid command did not return the expected ext4 filesystem type"
  exit 1
fi