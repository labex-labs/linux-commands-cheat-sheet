#!/bin/bash
if lsmod | grep -q 'bridge'; then
  exit 0
else
  echo "The 'bridge' module is not loaded."
  exit 1
fi