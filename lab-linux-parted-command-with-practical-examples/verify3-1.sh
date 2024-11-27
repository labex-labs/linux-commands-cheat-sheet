#!/bin/bash
if sudo parted ~/project/disk.img print | grep -q "0.50GB"; then
  exit 0
else
  exit 1
fi