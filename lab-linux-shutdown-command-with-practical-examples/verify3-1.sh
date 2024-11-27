#!/bin/bash
if ! sudo shutdown 16:20 2>&1 | grep -q "Shutdown scheduled"; then
  exit 1
fi
if ! sudo shutdown -c 2>&1 | grep -q "shutdown cancelled"; then
  exit 1
fi