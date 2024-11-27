#!/bin/bash
output=$(sudo modprobe non_existent_module 2>&1)
if [[ $output == *"non_existent_module not found"* ]]; then
  exit 0
else
  echo "The error message for a non-existent module is not as expected."
  exit 1
fi