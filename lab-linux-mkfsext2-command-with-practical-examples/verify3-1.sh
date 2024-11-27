#!/bin/bash
if tune2fs -l /dev/sdb1 | grep -q "Block size: 4096"; then
  if tune2fs -l /dev/sdb1 | grep -q "Inode ratio: 1:8192"; then
    if tune2fs -l /dev/sdb1 | grep -q "Filesystem volume name: my_ext2_fs"; then
      exit 0
    fi
  fi
fi
exit 1