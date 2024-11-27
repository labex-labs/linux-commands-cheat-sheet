#!/bin/bash
if ! sudo hdparm -t /dev/sda | grep -q "MB/sec"; then
  exit 1
fi