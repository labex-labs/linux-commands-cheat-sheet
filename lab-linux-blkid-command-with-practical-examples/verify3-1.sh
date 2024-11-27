#!/bin/bash
if sudo blkid /dev/sda1 | grep -q "UUID=\"d2d2b1f8-7f4f-4c2a-9d7f-d7f7d7f7d7f7\""; then
  exit 0
else
  echo "blkid command did not return the expected UUID for /dev/sda1"
  exit 1
fi