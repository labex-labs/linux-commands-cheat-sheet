#!/bin/bash
sudo fdisk -l | grep "/dev/sda1" | grep -q "Linux"
if [ $? -eq 0 ]; then
  echo "Error: /dev/sda1 partition still exists and is of type Linux."
  exit 1
else
  echo "Success: /dev/sda1 partition was overwritten and is no longer present."
  exit 0
fi