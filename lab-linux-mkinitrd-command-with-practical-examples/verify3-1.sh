#!/bin/bash
if [ -f /boot/initramfs-$(uname -r).img ]; then
  exit 0
else
  exit 1
fi