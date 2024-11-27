#!/bin/bash
if sudo chroot ~/project/chroot ls -l / | grep -q 'test_file.txt'; then
  exit 0
else
  echo "Failed to create file in chroot environment"
  exit 1
fi