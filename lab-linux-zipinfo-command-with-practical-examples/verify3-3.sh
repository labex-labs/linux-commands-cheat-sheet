#!/bin/bash
if zipinfo -s sample.zip | grep -q "3 files, 18 bytes uncompressed, 270 bytes compressed:  67.4%"; then
  exit 0
else
  echo "The zipinfo -s command did not display the expected compression statistics."
  exit 1
fi