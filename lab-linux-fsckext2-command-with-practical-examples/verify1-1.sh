#!/bin/bash
version=$(fsck.ext2 --version | awk '{print $2}')
if [[ "$version" == "1.46.5" ]]; then
  exit 0
else
  echo "Expected fsck.ext2 version 1.46.5, but found $version"
  exit 1
fi