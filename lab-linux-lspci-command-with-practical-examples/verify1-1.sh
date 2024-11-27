#!/bin/bash
if sudo lspci | grep -q "Host bridge"; then
  exit 0
else
  echo "The lspci command did not return any host bridge information."
  exit 1
fi