#!/bin/bash
if iostat -x | grep -q "Device"; then
  exit 0
else
  exit 1
fi