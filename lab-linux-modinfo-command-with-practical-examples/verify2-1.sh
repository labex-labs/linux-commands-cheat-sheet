#!/bin/bash
modules=$(sudo modinfo -F filename -a)
if [[ $modules == *"ext4"* ]]; then
  exit 0
else
  echo "The ext4 module is not listed in the output of modinfo -F filename -a."
  exit 1
fi