#!/bin/bash
if sudo tune2fs -l /dev/sda1 | grep -q "Check interval.*30 days"; then
  exit 0
else
  exit 1
fi