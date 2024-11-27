#!/bin/bash
if ! lsusb -d 046d:c077 | grep -q "M105 Optical Mouse"; then
  echo "lsusb -d command did not return expected output for the specified device."
  exit 1
fi
echo "lsusb -d command executed successfully."
exit 0