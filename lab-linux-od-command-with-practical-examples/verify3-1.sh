#!/bin/bash
if od -tx1 random.txt | grep -q "f6 d1 9d 2e 4a 4b 5b 8f"; then
  exit 0
else
  echo "The od command output does not match the expected hexadecimal format."
  exit 1
fi