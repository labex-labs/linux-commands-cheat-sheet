#!/bin/bash

# Check if a USB drive is connected
usb_device=$(lsblk | grep -E 'sdb1|nvme0n1p1' | awk '{print $1}')
if [ -n "$usb_device" ]; then
    echo "Ejecting USB device $usb_device"
    sudo eject "/dev/$usb_device"
else
    echo "No USB device found to eject"
fi