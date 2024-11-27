#!/bin/bash
if [ -f "aclocal.m4" ]; then
  exit 0
else
  echo "aclocal.m4 file not found"
  exit 1
fi