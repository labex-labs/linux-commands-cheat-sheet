#!/bin/bash
if [ -f myproject/src/main.c ] && [ -f myproject/src/myheader.h ] && [ -f myproject/config.h ] && [ -f myproject/Makefile ] && [ -f myproject/src/Makefile ]; then
  echo "The autoconf configuration files have been customized successfully."
  exit 0
else
  echo "The autoconf configuration files were not customized correctly."
  exit 1
fi