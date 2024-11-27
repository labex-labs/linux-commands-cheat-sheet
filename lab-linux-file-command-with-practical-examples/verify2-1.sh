#!/bin/bash
if ! file text_file.txt | grep -q 'ASCII text'; then
  exit 1
fi
if ! file binary_file.bin | grep -q 'data'; then
  exit 1
fi
if ! file text_file.txt.gz | grep -q 'gzip compressed data'; then
  exit 1
fi
exit 0