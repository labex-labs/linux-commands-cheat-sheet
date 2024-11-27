#!/bin/bash
if hostnamectl status | grep -q "Static hostname: ubuntu"; then
  exit 0
else
  echo "The static hostname is not 'ubuntu' as expected."
  exit 1
fi