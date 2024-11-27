#!/bin/bash
if ! sudo dd if=/dev/sdb of=/dev/null bs=4M count=1 > /dev/null 2>&1; then
  exit 1
fi
if ! sudo diff -q ~/project/usb_backup.img /dev/sdb; then
  exit 1
fi