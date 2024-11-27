#!/bin/bash
if ! sudo mdadm --detail /dev/md0 | grep -q "Raid Level : raid5"; then
  echo "RAID 5 array not found. Please check the steps to create the array."
  exit 1
else
  echo "RAID 5 array created successfully."
  exit 0
fi