#!/bin/bash
if sudo lspci | grep -q "VGA compatible controller"; then
  exit 0
else
  echo "The lspci command did not return any information about the VGA compatible controller."
  exit 1
fi