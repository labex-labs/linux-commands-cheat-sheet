#!/bin/bash
if [ "$(hostid)" != "" ]; then
  exit 0
else
  echo "The hostid command did not return a valid identifier."
  exit 1
fi