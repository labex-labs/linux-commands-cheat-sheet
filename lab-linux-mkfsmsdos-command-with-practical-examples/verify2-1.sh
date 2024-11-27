#!/bin/bash
if ! file fat32_disk.img | grep "FAT32"; then
  exit 1
fi