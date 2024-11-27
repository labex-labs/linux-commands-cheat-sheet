#!/bin/bash
if ! lpq -l 2>&1 | grep -q "labex"; then
  exit 1
fi
if ! lpq -P printer1 2>&1 | grep -q "document.pdf"; then
  exit 1
fi