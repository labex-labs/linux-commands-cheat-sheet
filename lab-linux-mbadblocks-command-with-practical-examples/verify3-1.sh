#!/bin/bash
if ! sudo mbadblocks -r /dev/sda1 | grep -q "Relocating data"; then
    echo "Bad blocks were not repaired on the file system."
    exit 1
fi
exit 0