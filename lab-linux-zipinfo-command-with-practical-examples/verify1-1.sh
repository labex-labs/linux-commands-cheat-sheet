#!/bin/bash
if zipinfo sample.zip | grep -q "file1.txt" && \
   zipinfo sample.zip | grep -q "file2.txt" && \
   zipinfo sample.zip | grep -q "file3.txt"; then
  exit 0
else
  echo "The zipinfo command did not display the expected file names."
  exit 1
fi