#!/bin/bash
if [ -f "configure" ]; then
  exit 0
else
  echo "configure script not found"
  exit 1
fi