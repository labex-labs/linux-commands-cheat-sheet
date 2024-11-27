#!/bin/bash
if zipinfo -z sample.zip file1.txt | grep -q "file1.txt"; then
  exit 0
else
  echo "The zipinfo -z command did not display the expected file details."
  exit 1
fi