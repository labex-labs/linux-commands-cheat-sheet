#!/bin/bash
if ! dpkg -s tree &> /dev/null; then
  exit 1
fi
if dpkg -s tree | grep -q "Status: install ok installed"; then
  exit 0
else
  exit 1
fi