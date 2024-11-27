#!/bin/bash
if sudo dmesg | grep -q "Linux version"; then
  exit 0
else
  echo "The dmesg command did not display the expected kernel version information."
  exit 1
fi