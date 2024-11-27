#!/bin/bash
if ! lsusb -v -d 046d:c077 | grep -q "M105 Optical Mouse"; then
  echo "lsusb -v -d command did not return expected output for the specified device."
  exit 1
fi
echo "lsusb -v -d command executed successfully."
exit 0