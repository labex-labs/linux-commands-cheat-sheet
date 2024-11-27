#!/bin/bash
lilo_version=$(sudo lilo -V | awk '{print $3}')
if [[ "$lilo_version" == "22.8.1" ]]; then
  exit 0
else
  echo "Incorrect lilo version. Expected 22.8.1, but got $lilo_version"
  exit 1
fi