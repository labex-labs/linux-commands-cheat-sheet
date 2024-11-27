#!/bin/bash
if ! sudo hdparm -i /dev/sda | grep -q "ReadSeek="; then
  exit 1
fi