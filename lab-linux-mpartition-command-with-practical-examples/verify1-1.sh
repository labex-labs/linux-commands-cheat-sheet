#!/bin/bash
if ! sudo mpartition -h &> /dev/null; then
  echo "The mpartition command is not available or not working as expected."
  exit 1
else
  echo "The mpartition command is available and working as expected."
  exit 0
fi