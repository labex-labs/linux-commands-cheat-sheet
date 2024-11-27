#!/bin/bash
if ! sudo eject /dev/cdrom; then
    echo "Failed to eject the CD/DVD drive"
    exit 1
fi