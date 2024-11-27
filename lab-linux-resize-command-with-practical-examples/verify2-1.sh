#!/bin/bash
if ! sudo fdisk -l /dev/sdb | grep -q "/dev/sdb1.*15G"; then
  exit 1
fi