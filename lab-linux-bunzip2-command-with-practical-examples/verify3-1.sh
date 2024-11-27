#!/bin/bash
if [ ! -f file1.txt ] || [ ! -f file2.txt ] || [ ! -f file3.txt ]; then
  exit 1
fi
if ! grep -q "This is file 1." file1.txt; then
  exit 1
fi
if ! grep -q "This is file 2." file2.txt; then
  exit 1
fi
if ! grep -q "This is file 3." file3.txt; then
  exit 1
fi