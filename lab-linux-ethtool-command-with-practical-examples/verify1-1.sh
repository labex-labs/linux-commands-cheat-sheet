#!/bin/bash
if ethtool --version | grep -q "ethtool version 5.15"; then
  exit 0
else
  echo "ethtool version not found or not 5.15"
  exit 1
fi