#!/bin/bash
if testparm --version | grep -q "Version 4.15.5-Debian"; then
  exit 0
else
  echo "testparm command version is not as expected"
  exit 1
fi