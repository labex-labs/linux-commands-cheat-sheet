#!/bin/bash
if [ -f sample_unix.txt ] && grep -q $'\r$' sample_unix.txt; then
  exit 0
else
  echo "The sample_unix.txt file was not converted correctly using the unix2dos command."
  exit 1
fi