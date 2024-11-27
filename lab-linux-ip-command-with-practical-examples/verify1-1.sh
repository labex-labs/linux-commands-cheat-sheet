#!/bin/bash
if sudo ip link show | grep -q "eth0"; then
  exit 0
else
  exit 1
fi