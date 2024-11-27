#!/bin/bash
if ! sudo mcopy -i /dev/fd0 :: 2>&1 | grep -q "Directory for /"; then
  exit 1
fi