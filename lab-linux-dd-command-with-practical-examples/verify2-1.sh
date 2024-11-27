#!/bin/bash
if [ ! -f ~/project/usb_backup.img ]; then
  exit 1
fi
if ! sudo dd if=/dev/sdb of=/dev/null bs=4M count=1 > /dev/null 2>&1; then
  exit 1
fi