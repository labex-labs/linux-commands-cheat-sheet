#!/bin/bash
if ! cksum file.txt > /dev/null 2>&1; then
  exit 1
fi