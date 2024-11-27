#!/bin/bash
if [ "$(history | tail -n 1 | grep -c 'logout')" -eq 0 ]; then
  exit 1
fi