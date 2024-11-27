#!/bin/bash
if ip link show eth0 | grep -q "state DOWN"; then
  exit 0
else
  echo "The eth0 interface is not down."
  exit 1
fi