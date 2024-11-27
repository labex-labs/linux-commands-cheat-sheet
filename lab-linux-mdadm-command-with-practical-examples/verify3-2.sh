#!/bin/bash
if ! sudo mdadm --detail /dev/md0 | grep -q "State : clean, degraded"; then
  echo "RAID array is not in a degraded state. Please check the steps."
  exit 1
else
  echo "RAID array is in a degraded state as expected."
  exit 0
fi