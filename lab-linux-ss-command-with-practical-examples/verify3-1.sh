#!/bin/bash
if ! sudo ss -t -i &> /dev/null; then
  echo "The ss command failed to display detailed TCP socket information."
  exit 1
fi
if ! sudo ss -o &> /dev/null; then
  echo "The ss command failed to display socket states."
  exit 1
fi
echo "The ss command usage for socket statistics and states was verified successfully."
exit 0