#!/bin/bash
if [[ "$(timedatectl | grep 'NTP service')" == *"active"* ]]; then
  exit 0
else
  exit 1
fi