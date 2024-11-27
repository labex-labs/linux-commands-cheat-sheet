#!/bin/bash
if ! sudo mpartition -l /dev/sda | grep -q "/dev/sda2"; then
  echo "The new partition /dev/sda2 was not created successfully."
  exit 1
else
  echo "The new partition /dev/sda2 was created successfully."
  exit 0
fi