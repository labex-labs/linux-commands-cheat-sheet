#!/bin/bash
if ! file archive.tar.gz | grep -q 'gzip compressed data'; then
  exit 1
fi
if ! tar -tf archive.tar.gz | grep -q 'binary_file.bin'; then
  exit 1
fi
if ! tar -tf archive.tar.gz | grep -q 'text_file.txt'; then
  exit 1
fi
if ! file text_file.txt | grep -q 'ASCII text'; then
  exit 1
fi
exit 0