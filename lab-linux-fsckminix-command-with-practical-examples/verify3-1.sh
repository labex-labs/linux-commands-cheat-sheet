#!/bin/bash
sudo dd if=/dev/zero of=minix2.img bs=1M count=10
sudo mkfs.minix minix2.img
sudo fsck.minix minix2.img | grep "clean"
if [ $? -eq 0 ]; then
  sudo dd if=/dev/zero of=minix2.img bs=1 count=1024 conv=notrunc
  sudo fsck.minix minix2.img | grep "File system repaired"
  if [ $? -eq 0 ]; then
    exit 0
  else
    echo "File system not repaired successfully"
    exit 1
  fi
else
  echo "File system not clean"
  exit 1
fi