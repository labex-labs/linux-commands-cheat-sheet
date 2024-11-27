#!/bin/bash
if ! lsusb -v | grep -q "Device Descriptor"; then
  echo "lsusb -v command did not return expected output with device descriptor information."
  exit 1
fi
echo "lsusb -v command executed successfully."
exit 0