#!/bin/bash
if dpkg -s ytalk | grep -q "Status: install ok installed"; then
  exit 0
else
  exit 1
fi