#!/bin/bash
if [[ "$(timedatectl | grep 'Time zone')" == *"America/Los_Angeles"* ]]; then
  exit 0
else
  exit 1
fi