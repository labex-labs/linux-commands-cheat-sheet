#!/bin/bash
if ! zdiff --help &> /dev/null; then
  echo "The zdiff command is not available or not functioning properly."
  exit 1
fi
echo "The zdiff command is working as expected."
exit 0