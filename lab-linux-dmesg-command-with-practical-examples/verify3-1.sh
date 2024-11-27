#!/bin/bash
if sudo dmesg | grep -q "error"; then
  echo "The dmesg output contains error messages."
  exit 0
else
  echo "The dmesg output does not contain any error messages."
  exit 1
fi