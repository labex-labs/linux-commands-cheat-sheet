#!/bin/bash
output=$(free -h -t)
if [[ $output == *"Total:"* ]]; then
  exit 0
else
  echo "The free command output is not customized as expected."
  exit 1
fi