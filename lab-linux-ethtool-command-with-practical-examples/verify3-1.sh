#!/bin/bash
if ethtool eth0 | grep -q "Speed: 100Mb/s" && ethtool eth0 | grep -q "Duplex: Full"; then
  exit 0
else
  echo "Failed to modify network interface settings"
  exit 1
fi