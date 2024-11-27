#!/bin/bash
if sudo ip link show | grep -q "myint"; then
  exit 0
else
  exit 1
fi