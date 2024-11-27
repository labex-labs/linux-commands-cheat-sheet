#!/bin/bash
if ! sudo fdisk -l /dev/sda &> /dev/null; then
  exit 1
fi
if ! sudo fdisk --help | grep -q "Create, delete, resize, etc. a partition"; then
  exit 1
fi