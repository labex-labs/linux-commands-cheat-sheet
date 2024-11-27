#!/bin/bash
if zipinfo -p sample.zip file2.txt | grep -q "contents of file2.txt"; then
  exit 0
else
  echo "The zipinfo -p command did not display the expected file contents."
  exit 1
fi