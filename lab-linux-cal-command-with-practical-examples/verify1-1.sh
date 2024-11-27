#!/bin/bash
if cal | grep -q "$(date +%B %Y)"; then
  exit 0
else
  exit 1
fi