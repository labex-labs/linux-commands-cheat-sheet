#!/bin/bash
if sudo losetup -a | grep -q "/dev/loop0: /home/labex/project/disk.img"; then
    exit 0
else
    echo "The loopback device /dev/loop0 was not reattached to the disk.img file. Please check the output of 'sudo losetup -a'."
    exit 1
fi