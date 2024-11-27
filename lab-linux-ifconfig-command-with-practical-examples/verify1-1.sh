#!/bin/bash
if sudo ifconfig | grep -q "inet"; then
  exit 0
else
  echo "The ifconfig command did not display any network interface information."
  exit 1
fi