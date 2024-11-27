#!/bin/bash
if ! dpkg -s htop &> /dev/null; then
  exit 1
fi
if dpkg -s htop | grep -q "Status: install ok installed"; then
  exit 0
else
  exit 1
fi