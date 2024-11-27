#!/bin/bash
if sudo ip route show | grep -q "default"; then
  exit 0
else
  exit 1
fi