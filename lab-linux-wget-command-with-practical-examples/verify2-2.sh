#!/bin/bash
if [ -f myfile.zip ]; then
  exit 0
else
  exit 1
fi