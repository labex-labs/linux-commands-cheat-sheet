#!/bin/bash
if ! diff sample_unix.txt sample_unix2.txt; then
  echo "The dos2unix command did not convert the file correctly."
  exit 1
else
  exit 0
fi