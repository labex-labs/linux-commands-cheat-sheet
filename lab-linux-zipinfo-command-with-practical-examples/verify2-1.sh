#!/bin/bash
if zipinfo -l sample.zip | grep -q "file1.txt" && \
   zipinfo -l sample.zip | grep -q "file2.txt" && \
   zipinfo -l sample.zip | grep -q "file3.txt"; then
  exit 0
else
  echo "The zipinfo -l command did not display the expected file names."
  exit 1
fi