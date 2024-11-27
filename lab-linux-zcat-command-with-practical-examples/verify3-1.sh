#!/bin/bash
if zcat another_sample.txt.gz | grep -q "sample"; then
  exit 0
else
  echo "The combination of zcat and grep did not work as expected."
  exit 1
fi