#!/bin/bash
gcc_version=$(gcc --version | head -n1 | awk '{print $3}')
if [[ "$gcc_version" == "11.3.0" ]]; then
  exit 0
else
  echo "Expected GCC version 11.3.0, but found $gcc_version"
  exit 1
fi