#!/bin/bash
if sudo lshw -short | grep -q "processor"; then
  exit 0
else
  echo "lshw -short command did not output processor information"
  exit 1
fi