#!/bin/bash
disk="/dev/sdb"
badblocks=$(sudo badblocks -v $disk | grep "bad blocks found" | awk '{print $1}')
if [[ "$badblocks" != "0" ]]; then
  exit 1
fi