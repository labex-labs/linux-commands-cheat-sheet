#!/bin/bash
if od -x sample.txt | grep -q "4865 6c6c 6f2c 2020 4c69 6e75 7821 0a00"; then
  exit 0
else
  echo "The od command output does not match the expected hexadecimal format."
  exit 1
fi