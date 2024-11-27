#!/bin/bash
if [ -f /boot/custom-initramfs.img ]; then
  exit 0
else
  exit 1
fi