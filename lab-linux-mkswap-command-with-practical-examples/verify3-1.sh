#!/bin/bash
if ! sudo swapon --show | grep -q "swapfile"; then
  exit 1
else
  exit 0
fi