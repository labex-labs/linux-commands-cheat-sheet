#!/bin/bash
if [ -f ~/project/sample-project/config.h.in ]; then
  exit 0
else
  echo "The config.h.in file was not generated. Please run 'autoheader' in the project directory."
  exit 1
fi