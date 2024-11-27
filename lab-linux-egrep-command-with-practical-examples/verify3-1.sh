#!/bin/bash
if egrep -c '\b\d{2}\b' data.txt | grep -q '2'; then
  exit 0
else
  echo "Could not find the expected output from egrep combined with wc."
  exit 1
fi