#!/bin/bash
if sudo ip addr show eth0 | grep -q "DOWN"; then
  exit 0
else
  exit 1
fi