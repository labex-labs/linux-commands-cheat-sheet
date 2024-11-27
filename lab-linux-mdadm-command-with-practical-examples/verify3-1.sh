#!/bin/bash
if ! sudo mdadm --detail /dev/md0 | grep -q "Spare Devices : 1"; then
  echo "Spare disk not added to the RAID array. Please check the steps."
  exit 1
else
  echo "Spare disk added to the RAID array successfully."
  exit 0
fi