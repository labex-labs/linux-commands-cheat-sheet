#!/bin/bash
if vmstat | grep -q "procs"; then
  exit 0
else
  echo "The vmstat command did not display the expected output."
  exit 1
fi