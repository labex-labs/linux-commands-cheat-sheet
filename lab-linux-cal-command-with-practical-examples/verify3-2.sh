#!/bin/bash
if cal 2024 | grep -q "2024"; then
  exit 0
else
  exit 1
fi