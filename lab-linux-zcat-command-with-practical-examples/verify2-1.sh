#!/bin/bash
if zcat another_sample.txt.gz | grep -q "This is another sample text file."; then
  exit 0
else
  echo "The zcat command did not decompress the gzipped file correctly."
  exit 1
fi