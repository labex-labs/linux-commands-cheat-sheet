#!/bin/bash
if sudo mpstat -P ALL | grep -q "%usr"; then
  exit 0
else
  echo "The mpstat command did not output the expected CPU utilization metrics for individual CPUs."
  exit 1
fi