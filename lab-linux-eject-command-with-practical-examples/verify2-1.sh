#!/bin/bash
if lsblk | grep -q "/dev/sdb1"; then
    echo "USB drive is still present"
    exit 1
fi