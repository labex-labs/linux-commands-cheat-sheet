#!/bin/bash
if sudo ip addr show eth0 | grep -q "UP"; then
  exit 0
else
  exit 1
fi