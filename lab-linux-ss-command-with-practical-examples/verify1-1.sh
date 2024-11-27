#!/bin/bash
if ! sudo ss -t &> /dev/null; then
  echo "The ss command failed to execute properly."
  exit 1
fi
echo "The ss command executed successfully."
exit 0