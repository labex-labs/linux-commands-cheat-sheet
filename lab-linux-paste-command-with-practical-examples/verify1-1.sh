#!/bin/bash
if [ -f file1.txt ] && [ -f file2.txt ] && [ -f file3.txt ]; then
  exit 0
else
  exit 1
fi