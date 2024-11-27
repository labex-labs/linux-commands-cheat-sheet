#!/bin/bash
if ! sudo hdparm -W /dev/sda | grep -q "write-caching ="; then
  exit 1
fi