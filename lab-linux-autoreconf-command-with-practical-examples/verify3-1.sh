#!/bin/bash
if [ -f ~/project/sample-project-2/configure ]; then
  exit 0
else
  echo "The 'configure' script was not generated. Please check the 'configure.ac' file and run 'autoreconf -i' again."
  exit 1
fi