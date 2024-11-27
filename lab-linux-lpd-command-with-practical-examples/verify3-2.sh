#!/bin bin/bash
if sudo lpq myprinter | grep -q "no entries"; then
  exit 0
else
  echo "The print job was not canceled successfully."
  exit 1
fi