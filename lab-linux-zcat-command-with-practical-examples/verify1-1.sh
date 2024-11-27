#!/bin/bash
if zcat sample.txt.gz | grep -q "This is a sample text file."; then
  exit 0
else
  echo "The zcat command did not display the expected content."
  exit 1
fi