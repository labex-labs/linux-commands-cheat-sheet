#!/bin/bash
if sudo tune2fs -l /dev/sda1 | grep -q "Filesystem UUID"; then
  exit 0
else
  exit 1
fi