#!/bin/bash
if ! sudo hdparm -i /dev/sda | grep -q "Model=VBOX HARDDISK"; then
  exit 1
fi