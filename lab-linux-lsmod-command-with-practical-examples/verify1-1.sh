#!/bin/bash
if sudo lsmod | grep -q 'Module'; then
  exit 0
else
  echo "The lsmod command did not return any output. Please check if kernel modules are loaded on your system."
  exit 1
fi