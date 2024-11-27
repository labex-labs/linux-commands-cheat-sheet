#!/bin/bash
sudo mount /dev/sdb1 /mnt
if sudo mlabel -s /mnt | grep -q "Mounted Volume"; then
  sudo umount /mnt
  exit 0
else
  sudo umount /mnt
  exit 1
fi