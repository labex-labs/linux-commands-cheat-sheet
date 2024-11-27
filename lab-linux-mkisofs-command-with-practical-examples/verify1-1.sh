#!/bin/bash
if command -v mkisofs >/dev/null 2>&1; then
  exit 0
else
  exit 1
fi