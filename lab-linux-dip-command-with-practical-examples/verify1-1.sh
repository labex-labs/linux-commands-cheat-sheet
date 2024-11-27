#!/bin/bash
if dip --version | grep -q '3.3.7'; then
  exit 0
else
  echo "The dip command version is not 3.3.7"
  exit 1
fi