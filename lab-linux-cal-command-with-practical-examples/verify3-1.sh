#!/bin/bash
if cal 4 2023 | grep -q "April 2023"; then
  exit 0
else
  exit 1
fi