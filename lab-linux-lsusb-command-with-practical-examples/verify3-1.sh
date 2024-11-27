#!/bin/bash
if ! lsusb | grep -q "Linux Foundation"; then
  echo "lsusb command did not return expected output listing USB root hubs."
  exit 1
fi
echo "lsusb command executed successfully."
exit 0