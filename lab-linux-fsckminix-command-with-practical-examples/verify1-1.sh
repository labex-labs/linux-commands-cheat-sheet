#!/bin/bash
version=$(fsck.minix --version | awk '{print $3}')
if [[ $version == "2.38" ]]; then
  exit 0
else
  echo "Unexpected fsck.minix version: $version"
  exit 1
fi