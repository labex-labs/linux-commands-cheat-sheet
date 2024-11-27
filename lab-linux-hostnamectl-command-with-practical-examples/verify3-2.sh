#!/bin/bash
if hostnamectl status | grep -q "Static hostname: permanent-hostname" && \
   hostnamectl status | grep -q "Transient hostname: permanent-hostname"; then
  exit 0
else
  echo "The static and transient hostnames are not 'permanent-hostname' as expected."
  exit 1
fi