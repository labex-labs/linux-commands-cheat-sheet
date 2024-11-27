#!/bin/bash
sudo fsck.ext2 -n test.img | grep "FILE SYSTEM WAS MODIFIED"
if [ $? -eq 0 ]; then
  exit 0
else
  echo "File system was not properly repaired"
  exit 1
fi