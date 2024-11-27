#!/bin/bash
if ip link show eth0 | grep -q "state UP"; then
  exit 0
else
  echo "The eth0 interface is not up."
  exit 1
fi