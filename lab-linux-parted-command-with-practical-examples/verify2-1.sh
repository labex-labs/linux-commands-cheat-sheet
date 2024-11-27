#!/bin/bash
if [ -f ~/project/disk.img ] && sudo parted ~/project/disk.img print | grep -q "Number  Start   End     Size    Type     File system  Flags"; then
  exit 0
else
  exit 1
fi