#!/bin/bash
if sudo lshw | grep -q "CPU"; then
  exit 0
else
  echo "lshw command did not output CPU information"
  exit 1
fi