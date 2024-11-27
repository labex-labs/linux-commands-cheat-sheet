#!/bin/bash
if ! diff3 -m file1.txt file2.txt file3.txt | grep -q "Line 2 - Another Modification"; then
  exit 1
fi