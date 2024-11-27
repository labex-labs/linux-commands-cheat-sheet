#!/bin/bash
if ! sudo hdparm -B /dev/sda | grep -q "254"; then
  exit 1
fi