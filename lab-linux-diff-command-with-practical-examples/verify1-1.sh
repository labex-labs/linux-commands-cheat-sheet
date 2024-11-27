#!/bin/bash
if diff file1.txt file2.txt | grep -q "This is file1.txt"; then
  exit 0
else
  exit 1
fi