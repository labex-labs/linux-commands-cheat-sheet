#!/bin/bash
if [ -f split_part_aa ] && [ -f split_part_ab ] && [ -f split_part_ac ] && [ -f split_part_ad ] && [ -f split_part_ae ]; then
  echo "File was split successfully"
  exit 0
else
  echo "File was not split correctly"
  exit 1
fi