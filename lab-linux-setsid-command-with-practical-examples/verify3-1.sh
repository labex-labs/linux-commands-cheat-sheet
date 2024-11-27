#!/bin/bash
pid=$(ps -o pid,cmd | grep 'while true' | awk '{print $1}')
if [ -z "$pid" ]; then
  exit 1
fi
if ! cat ~/project/output.txt | grep -q 'Running in the background'; then
  exit 1
fi