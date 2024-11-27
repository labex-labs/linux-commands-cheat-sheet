#!/bin/bash
if hostnamectl status | grep -q "Transient hostname: ubuntu"; then
  exit 0
else
  echo "The transient hostname is not 'ubuntu' as expected."
  exit 1
fi