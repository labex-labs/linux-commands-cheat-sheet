#!/bin/bash
if ! grep -q "^    " sample3.txt; then
  exit 1
fi