#!/bin/bash
if ! sudo blkid fat32_disk.img | grep -q "My FAT32 Volume"; then
  exit 1
fi
if ! sudo blkid fat32_disk.img | grep -q "deadbeef"; then
  exit 1
fi