#!/bin/bash
if vmstat | grep -q "cpu" && \
   vmstat | grep -q "memory" && \
   vmstat | grep -q "io"; then
  exit 0
else
  echo "The vmstat command did not display the expected output for CPU, memory, and disk I/O."
  exit 1
fi