#!/bin/bash
if [[ "$(timedatectl | grep 'Time zone')" == *"America/New_York"* ]]; then
  exit 0
else
  exit 1
fi