#!/bin/bash
if ! sudo parted ~/project/disk.img print | grep -q "Number"; then
  exit 0
else
  exit 1
fi