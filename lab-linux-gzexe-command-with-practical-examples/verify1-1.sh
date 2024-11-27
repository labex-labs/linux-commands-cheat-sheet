#!/bin/bash
if gzexe --version | grep -q "gzexe (GNU gzip) 1.10"; then
  exit 0
else
  echo "gzexe version check failed"
  exit 1
fi