#!/bin/bash
if nmcli --version | grep -q '1.36.0'; then
  exit 0
else
  exit 1
fi