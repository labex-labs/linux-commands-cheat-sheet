#!/bin/bash
if od -t x1 binary.txt | grep -q "01 02 03 04 05 06 07 08"; then
  exit 0
else
  echo "The od command output does not match the expected hexadecimal format."
  exit 1
fi