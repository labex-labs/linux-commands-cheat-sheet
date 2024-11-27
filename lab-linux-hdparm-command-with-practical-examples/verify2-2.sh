#!/bin/bash
if ! sudo hdparm -T /dev/sda | grep -q "MB/sec"; then
  exit 1
fi