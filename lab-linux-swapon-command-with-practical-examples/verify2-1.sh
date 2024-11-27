#!/bin/bash
if [ "$(swapon --show | wc -l)" -gt 0 ]; then
  exit 0
else
  echo "No swap space configured."
  exit 1
fi