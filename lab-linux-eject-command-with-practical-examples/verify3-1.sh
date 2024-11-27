#!/bin/bash
if lsblk | grep -q "/dev/sr0"; then
    echo "CD/DVD drive is still present"
    exit 1
fi