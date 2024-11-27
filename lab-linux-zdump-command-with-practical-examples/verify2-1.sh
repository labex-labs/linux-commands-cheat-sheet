#!/bin/bash
output=$(sudo zdump -s America/New_York Europe/London Asia/Tokyo)
if [[ "$output" != *"America/New_York"* ]] || [[ "$output" != *"Europe/London"* ]] || [[ "$output" != *"Asia/Tokyo"* ]]; then
  exit 1
fi