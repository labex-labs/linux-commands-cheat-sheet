#!/bin/bash
if awk -F',' '{print $2}' data.txt | grep -q "25" && \
   awk -F',' '{print $2}' data.txt | grep -q "30" && \
   awk -F',' '{print $2}' data.txt | grep -q "35" && \
   awk -F',' '{print $2}' data.txt | grep -q "28"; then
  exit 0
else
  echo "awk data extraction failed"
  exit 1
fi