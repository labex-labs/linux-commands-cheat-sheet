#!/bin/bash
if ! sudo ss -a &> /dev/null; then
  echo "The ss command failed to display all network connections."
  exit 1
fi
if ! sudo ss -l &> /dev/null; then
  echo "The ss command failed to display listening sockets."
  exit 1
fi
if ! sudo ss -ltp &> /dev/null; then
  echo "The ss command failed to display process information for listening sockets."
  exit 1
fi
echo "The ss command usage was verified successfully."
exit 0