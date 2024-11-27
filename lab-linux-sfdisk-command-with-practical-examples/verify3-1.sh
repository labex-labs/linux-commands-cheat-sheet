#!/bin/bash
partitions=$(sudo sfdisk -l /dev/loop0 | grep "/dev/loop0p1" | wc -l)
if [[ $partitions -ne 1 ]]; then
  exit 1
fi