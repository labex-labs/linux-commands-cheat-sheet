#!/bin/bash
if [ -b /dev/loop0 ]; then
  echo "Minix file system created successfully."
  exit 0
else
  echo "Failed to create the Minix file system."
  exit 1
fi