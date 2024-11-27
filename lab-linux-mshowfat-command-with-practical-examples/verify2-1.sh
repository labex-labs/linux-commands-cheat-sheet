#!/bin/bash
if ! sudo mshowfat fat_image.img | grep -q "FAT file system"; then
  exit 1
fi
if ! sudo mshowfat /dev/sdb1 2>&1 | grep -q "FAT file system"; then
  exit 1
fi
exit 0