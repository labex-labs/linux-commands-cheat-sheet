#!/bin/bash
if [ -f encrypted_archive.zip ]; then
  exit 0
else
  echo "The encrypted zip archive 'encrypted_archive.zip' was not created."
  exit 1
fi