#!/bin/bash
if ! mshowfat --version | grep -q "mshowfat version"; then
  exit 1
fi
if ! sudo mshowfat /dev/sdb1 | grep -q "FAT file system"; then
  exit 1
fi
exit 0