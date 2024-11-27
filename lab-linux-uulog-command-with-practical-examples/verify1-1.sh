#!/bin/bash
if uulog -h &> /dev/null; then
  exit 0
else
  echo "The uulog command could not be found or executed properly."
  exit 1
fi