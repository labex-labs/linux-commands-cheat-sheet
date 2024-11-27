#!/bin/bash
if dos2unix --version | grep -q "dos2unix (NLS version)"; then
  exit 0
else
  echo "The dos2unix command version could not be verified."
  exit 1
fi