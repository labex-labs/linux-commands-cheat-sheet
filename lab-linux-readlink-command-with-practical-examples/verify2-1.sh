#!/bin/bash
if readlink -f python_link | grep -q "/usr/bin/python3"; then
  if readlink -m python_link | grep -q "/usr/bin/python3"; then
    if readlink -n python_link | grep -q "/usr/bin/python3"; then
      exit 0
    else
      echo "The readlink command with the -n option did not output the expected value."
      exit 1
    fi
  else
    echo "The readlink command with the -m option did not output the expected value."
    exit 1
  fi
else
  echo "The readlink command with the -f option did not output the expected value."
  exit 1
fi