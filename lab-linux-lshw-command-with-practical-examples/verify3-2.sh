#!/bin/bash
if [ -f network_info.xml ]; then
  echo "network_info.xml file created successfully"
  exit 0
else
  echo "network_info.xml file not found"
  exit 1
fi