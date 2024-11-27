#!/bin/bash
if [ -f binary_file.bin ] && [ -f example.txt.gz ]; then
  exit 0
else
  exit 1
fi