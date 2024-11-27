#!/bin/bash
if sudo procinfo -f "CPU: %c, Memory: %m, Disk: %d, Network: %n" | grep -q "CPU:" && \
   sudo procinfo -f "CPU: %c, Memory: %m, Disk: %d, Network: %n" | grep -q "Memory:" && \
   sudo procinfo -f "CPU: %c, Memory: %m, Disk: %d, Network: %n" | grep -q "Disk:" && \
   sudo procinfo -f "CPU: %c, Memory: %m, Disk: %d, Network: %n" | grep -q "Network:"; then
  exit 0
else
  exit 1
fi