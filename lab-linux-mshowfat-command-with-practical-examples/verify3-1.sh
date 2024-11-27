#!/bin/bash
if ! sudo mshowfat -v fat_image.img | grep -q "FAT file system"; then
  exit 1
fi
if ! sudo mshowfat -v fat_image.img | grep -q "documents"; then
  exit 1
fi
if ! sudo mshowfat -v fat_image.img | grep -q "sample.txt"; then
  exit 1
fi
exit 0