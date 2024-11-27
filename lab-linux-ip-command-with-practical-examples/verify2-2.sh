#!/bin/bash
if sudo ip link show myint | grep -q "UP"; then
  exit 0
else
  exit 1
fi