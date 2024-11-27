#!/bin/bash
sudo dd if=/dev/zero of=minix.img bs=1M count=10
sudo mkfs.minix minix.img
sudo mount -t minix minix.img /mnt
sudo touch /mnt/file1.txt
sudo mkdir /mnt/dir1
sudo umount /mnt
sudo dd if=/dev/zero of=minix.img bs=1 count=1024 conv=notrunc
sudo fsck.minix minix.img | grep "File system repaired"
if [ $? -eq 0 ]; then
  sudo mount -t minix minix.img /mnt
  if [ -f /mnt/file1.txt ] && [ -d /mnt/dir1 ]; then
    exit 0
  else
    echo "File or directory not found after repair"
    exit 1
  fi
else
  echo "File system not repaired successfully"
  exit 1
fi