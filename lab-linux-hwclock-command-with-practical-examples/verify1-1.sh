#!/bin/bash
if sudo hwclock | grep -q "$(date +"%Y-%m-%d %H:%M:%S")"; then
  exit 0
else
  exit 1
fi