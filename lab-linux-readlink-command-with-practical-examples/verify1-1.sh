#!/bin/bash
if [ "$(readlink python_link)" == "/usr/bin/python3" ]; then
  exit 0
else
  echo "The readlink command did not display the expected value for the symbolic link."
  exit 1
fi