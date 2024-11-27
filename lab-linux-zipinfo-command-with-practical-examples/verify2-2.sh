#!/bin/bash
if zipinfo -v sample.zip | grep -q "file1.txt" && \
   zipinfo -v sample.zip | grep -q "file2.txt" && \
   zipinfo -v sample.zip | grep -q "file3.txt"; then
  exit 0
else
  echo "The zipinfo -v command did not display the expected file names."
  exit 1
fi