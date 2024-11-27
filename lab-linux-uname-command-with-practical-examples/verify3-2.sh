#!/bin/bash
if grep -q "Ubuntu" /etc/lsb-release; then
  exit 0
else
  echo "The lsb_release -a command did not return the expected output containing 'Ubuntu'."
  exit 1
fi