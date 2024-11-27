#!/bin/bash
if sudo tune2fs -l /dev/sda1 | grep -q "Maximum mount count.*-1"; then
  exit 0
else
  exit 1
fi