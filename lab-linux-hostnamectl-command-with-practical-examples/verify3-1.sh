#!/bin/bash
if hostnamectl status | grep -q "Transient hostname: new-hostname"; then
  exit 0
else
  echo "The transient hostname is not 'new-hostname' as expected."
  exit 1
fi