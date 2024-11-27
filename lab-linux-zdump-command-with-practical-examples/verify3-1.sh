#!/bin/bash
output=$(sudo zdump -v America/New_York Asia/Tokyo)
if [[ "$output" != *"America/New_York"* ]] || [[ "$output" != *"Asia/Tokyo"* ]]; then
  exit 1
fi
if [[ "$output" != *"EDT"* ]] || [[ "$output" != *"JST"* ]]; then
  exit 1
fi