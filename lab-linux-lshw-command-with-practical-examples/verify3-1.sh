#!/bin/bash
if [ -f hardware_info.xml ]; then
  echo "hardware_info.xml file created successfully"
  exit 0
else
  echo "hardware_info.xml file not found"
  exit 1
fi