#!/bin/bash
if sudo mpartition -l /dev/sda | grep -q "/dev/sda2"; then
  echo "The partition /dev/sda2 was not deleted successfully."
  exit 1
else
  echo "The partition /dev/sda2 was deleted successfully."
  exit 0
fi