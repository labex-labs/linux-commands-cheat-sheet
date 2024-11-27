#!/bin/bash
if sudo lspci -v | grep -q "Kernel driver in use"; then
  exit 0
else
  echo "The lspci command with the -v option did not return any information about the kernel drivers in use."
  exit 1
fi