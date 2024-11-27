#!/bin/bash
# Check if the CPU usage graph is displayed
if grep -q "Cpu(s):" <(htop)
then
  echo "CPU usage graph is displayed"
  exit 0
else
  echo "CPU usage graph is not displayed"
  exit 1
fi