#!/bin/bash
if ! command -v lsusb > /dev/null; then
  echo "lsusb command not found. Please ensure the command is available in your environment."
  exit 1
fi
if ! lsusb | grep -q "Linux Foundation"; then
  echo "lsusb command did not return expected output. Please check your understanding of the command."
  exit 1
fi
echo "lsusb command executed successfully."
exit 0