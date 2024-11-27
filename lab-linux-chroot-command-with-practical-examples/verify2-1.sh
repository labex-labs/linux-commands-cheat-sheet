#!/bin/bash
if [ "$(sudo chroot ~/project/chroot pwd)" = "/" ]; then
  exit 0
else
  echo "Failed to create or enter the chroot environment"
  exit 1
fi