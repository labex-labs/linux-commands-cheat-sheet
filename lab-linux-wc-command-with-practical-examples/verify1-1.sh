#!/bin/bash
if [ $(wc -l < sample.txt) -eq 1 ] && [ $(wc -w < sample.txt) -eq 7 ] && [ $(wc -c < sample.txt) -eq 28 ]; then
  exit 0
else
  echo "The wc command did not produce the expected output."
  exit 1
fi