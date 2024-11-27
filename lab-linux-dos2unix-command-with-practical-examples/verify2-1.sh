#!/bin/bash
if grep -q $'\r' sample_dos.txt; then
  echo "The sample_dos.txt file is still in DOS format."
  exit 1
fi
if ! grep -q $'\n' sample_unix.txt; then
  echo "The sample_unix.txt file is not in Unix format."
  exit 1
fi
exit 0