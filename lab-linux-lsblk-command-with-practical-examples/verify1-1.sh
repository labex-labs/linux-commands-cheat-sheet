#!/bin/bash
if lsblk | grep -q "sda"; then
  exit 0
else
  echo "The lsblk command did not display the expected block device 'sda'."
  exit 1
fi