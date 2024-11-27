#!/bin/bash
if ! lsattr file1.txt file2.txt subdir subdir/file3.txt | grep -q '--------------e-----------'; then
  exit 1
fi