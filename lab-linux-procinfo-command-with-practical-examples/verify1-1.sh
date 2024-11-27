#!/bin/bash
if command -v procinfo > /dev/null; then
  exit 0
else
  exit 1
fi