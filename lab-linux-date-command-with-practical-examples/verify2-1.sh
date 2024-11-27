#!/bin/bash
if ! date | grep -q "$(date +"%a %b %d %H:%M:%S %Z %Y")"; then
  exit 1
fi