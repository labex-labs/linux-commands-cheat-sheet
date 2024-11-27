#!/bin/bash
if [ "$(date +"%Y-%m-%d %H:%M:%S")" == "$(sudo hwclock | cut -d' ' -f1)" ]; then
  exit 0
else
  exit 1
fi