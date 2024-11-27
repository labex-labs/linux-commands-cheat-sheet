#!/bin/bash
touch file1.tmp file2.tmp file3.txt
if ! find . -type f -name "*.tmp" -delete | grep -q "file1.tmp"; then
  exit 1
fi
touch file4.txt file5.txt
if ! find . -type f -name "*.txt" -exec cat {} \; | grep -q "file4.txt"; then
  exit 1
fi
if ! find . -type f -name "*.txt" -exec cp {} ~/backups/ \; | grep -q "file5.txt"; then
  exit 1
fi
if ! find . -type f -name "*.txt" -exec mv {} ~/archive/ \; | grep -q "file3.txt"; then
  exit 1
fi
exit 0