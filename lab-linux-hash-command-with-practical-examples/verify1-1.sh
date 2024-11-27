#!/bin/bash
hash_version=$(hash --version | grep -o 'GNU coreutils [0-9.]*')
if [[ "$hash_version" != "GNU coreutils 8.32" ]]; then
  exit 1
fi