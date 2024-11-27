#!/bin/bash
if free -h | grep "Swap:\s*0Bi\s*0Bi\s*0Bi"; then
  exit 0
else
  echo "Swap is still enabled. Please run 'sudo swapoff -a' to disable it."
  exit 1
fi