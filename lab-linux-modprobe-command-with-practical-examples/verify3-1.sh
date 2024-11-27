#!/bin/bash
if lsmod | grep -q 'nfs'; then
  echo "The 'nfs' module is still loaded."
  exit 1
else
  exit 0
fi