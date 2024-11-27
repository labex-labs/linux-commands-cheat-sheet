#!/bin/bash
if ! grep -q "DOS to Unix conversion complete." ~/.zsh_history; then
  echo "The convert_to_unix.sh script does not appear to have been executed."
  exit 1
fi
if grep -q $'\r' *.txt; then
  echo "One or more text files are still in DOS format."
  exit 1
fi
exit 0