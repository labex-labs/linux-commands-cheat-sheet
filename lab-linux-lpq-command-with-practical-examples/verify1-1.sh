#!/bin/bash
if ! lpq 2>&1 | grep -q "Rank"; then
  exit 1
fi