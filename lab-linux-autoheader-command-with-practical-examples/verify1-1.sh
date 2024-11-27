#!/bin/bash
if autoheader --version | grep -q "autoheader (GNU Autoconf) 2.71"; then
  exit 0
else
  echo "Unexpected autoheader version. Please check the output of 'autoheader --version'."
  exit 1
fi