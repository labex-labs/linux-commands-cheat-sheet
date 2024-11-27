#!/bin/bash
if ethtool eth0 | grep -q "Link detected: yes"; then
  exit 0
else
  echo "Failed to retrieve network interface information for eth0"
  exit 1
fi