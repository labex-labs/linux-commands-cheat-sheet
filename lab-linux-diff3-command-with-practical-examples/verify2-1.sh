#!/bin/bash
if ! diff3 file1.txt file2.txt file3.txt | grep -q "Line 2 - Modified"; then
  exit 1
fi