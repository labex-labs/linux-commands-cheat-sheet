#!/bin/bash
if lsmod | grep -q 'nfs'; then
  exit 0
else
  echo "The 'nfs' module is not loaded."
  exit 1
fi