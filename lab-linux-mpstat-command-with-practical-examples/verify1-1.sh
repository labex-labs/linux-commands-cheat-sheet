#!/bin/bash
if sudo mpstat | grep -q "%usr"; then
  exit 0
else
  echo "The mpstat command did not output the expected CPU utilization metrics."
  exit 1
fi