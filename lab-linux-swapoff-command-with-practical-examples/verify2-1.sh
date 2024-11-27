#!/bin/bash
if sudo swapon -s | grep "/dev/sda2" && cat /proc/swaps | grep "/dev/sda2"; then
  exit 0
else
  echo "Unable to find the expected swap partition information."
  exit 1
fi