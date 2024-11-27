#!/bin/bash
if file -s /dev/sdb1 | grep -q "DOS/MBR boot sector"; then
  exit 0
else
  exit 1
fi