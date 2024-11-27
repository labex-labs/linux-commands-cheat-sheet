#!/bin/bash
if dpkg -s mtools | grep -q "Status: install ok installed"; then
  exit 0
else
  exit 1
fi