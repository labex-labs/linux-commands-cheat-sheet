#!/bin/bash
if [[ "$(hostnamectl | grep 'Static hostname')" == *"my-custom-hostname"* ]]; then
  exit 0
else
  echo "The hostname is not set to 'my-custom-hostname'"
  exit 1
fi