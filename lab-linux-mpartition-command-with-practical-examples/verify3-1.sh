#!/bin/bash
if ! sudo mpartition -l /dev/sda | grep -q "/dev/sda2.*30G"; then
  echo "The partition /dev/sda2 was not resized successfully."
  exit 1
else
  echo "The partition /dev/sda2 was resized successfully."
  exit 0
fi