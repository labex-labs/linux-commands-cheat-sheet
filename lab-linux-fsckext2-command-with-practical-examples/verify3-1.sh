#!/bin/bash
sudo fsck.ext2 -f -v test2.img | grep "FILE SYSTEM WAS MODIFIED"
if [ $? -eq 0 ]; then
  exit 0
else
  echo "Forced file system check did not modify the file system"
  exit 1
fi