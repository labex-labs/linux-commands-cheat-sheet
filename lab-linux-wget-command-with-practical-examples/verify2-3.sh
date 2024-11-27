#!/bin/bash
if [ -f ~/downloads/file.zip ]; then
  exit 0
else
  exit 1
fi