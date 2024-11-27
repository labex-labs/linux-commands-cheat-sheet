#!/bin/bash
if ! grep -q "^This    is" sample4.txt; then
  exit 1
fi