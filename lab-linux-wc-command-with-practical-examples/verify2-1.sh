#!/bin/bash
if [ $(wc -l < sample.txt) -eq 3 ] && [ $(wc -w < sample.txt) -eq 9 ] && [ $(wc -c < sample.txt) -eq 66 ]; then
  exit 0
else
  echo "The wc command did not produce the expected output for the sample.txt file."
  exit 1
fi