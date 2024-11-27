#!/bin/bash
output=$(free -h)
if [[ $output == *"Mem:"* && $output == *"Swap:"* ]]; then
  exit 0
else
  echo "The free command output is not as expected."
  exit 1
fi