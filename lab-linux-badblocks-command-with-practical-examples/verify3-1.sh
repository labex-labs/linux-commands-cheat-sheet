#!/bin/bash
disk="/dev/sdb"
if ! sudo e2fsck -c $disk &> /dev/null; then
  exit 1
fi