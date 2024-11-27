#!/bin/bash
ARCH=$(arch)
sudo apt-get update
sudo apt-get install -y package-$ARCH
if [[ $? -eq 0 ]]; then
  exit 0
else
  echo "The package installation based on the system architecture was not successful."
  exit 1
fi