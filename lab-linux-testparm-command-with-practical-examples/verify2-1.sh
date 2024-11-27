#!/bin/bash
if sudo testparm | grep -q "Loaded services file OK"; then
  exit 0
else
  echo "Samba configuration file syntax is not valid"
  exit 1
fi