#!/bin/bash
if file -s /dev/sdb1 | grep -q "ext2 filesystem"; then
  exit 0
else
  exit 1
fi