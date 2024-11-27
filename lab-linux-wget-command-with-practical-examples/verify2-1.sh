#!/bin/bash
if [ -f file.zip ]; then
  exit 0
else
  exit 1
fi