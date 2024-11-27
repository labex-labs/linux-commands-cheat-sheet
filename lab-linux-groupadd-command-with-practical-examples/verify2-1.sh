#!/bin/bash
if groups john | grep -q "developers"; then
  exit 0
else
  exit 1
fi