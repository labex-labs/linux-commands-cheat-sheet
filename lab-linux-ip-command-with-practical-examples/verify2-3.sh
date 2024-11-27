#!/bin/bash
if sudo ip link show | grep -q "myint"; then
  exit 1
else
  exit 0
fi