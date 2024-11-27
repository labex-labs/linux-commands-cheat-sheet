#!/bin/bash
if ! dpkg -s htop &> /dev/null; then
  echo "Failed to install htop package"
  exit 1
fi