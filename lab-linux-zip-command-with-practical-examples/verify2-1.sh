#!/bin/bash
if [ -f my_archive.zip ]; then
  exit 0
else
  echo "The zip archive 'my_archive.zip' was not created."
  exit 1
fi