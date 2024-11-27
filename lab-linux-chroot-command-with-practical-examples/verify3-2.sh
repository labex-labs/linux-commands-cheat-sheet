#!/bin/bash
if ! sudo chroot ~/project/chroot ping -c 1 google.com; then
  exit 0
else
  echo "Network access is not limited in chroot environment"
  exit 1
fi