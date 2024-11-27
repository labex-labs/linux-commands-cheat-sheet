#!/bin/bash
output=$(ipcs -m)
if [[ $output =~ "Shared Memory Segments" ]]; then
  exit 0
else
  echo "The output of the 'ipcs -m' command does not contain the expected 'Shared Memory Segments' section."
  exit 1
fi