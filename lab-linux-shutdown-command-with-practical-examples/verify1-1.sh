#!/bin/bash
if ! sudo shutdown -h now 2>&1 | grep -q "Shutdown scheduled"; then
  exit 1
fi